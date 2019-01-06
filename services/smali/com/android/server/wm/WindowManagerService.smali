.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$1;,
        Lcom/android/server/wm/WindowManagerService$2;,
        Lcom/android/server/wm/WindowManagerService$AppFreezeListener;,
        Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$LocalService;,
        Lcom/android/server/wm/WindowManagerService$MousePositionTracker;,
        Lcom/android/server/wm/WindowManagerService$RotationWatcher;,
        Lcom/android/server/wm/WindowManagerService$SettingsObserver;,
        Lcom/android/server/wm/WindowManagerService$UpdateAnimationScaleMode;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field private static final ALWAYS_KEEP_CURRENT:Z = true

.field private static final ANIMATION_DURATION_SCALE:I = 0x2

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x1dcd65000L

.field private static final DENSITY_OVERRIDE:Ljava/lang/String; = "ro.config.density_override"

.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field static final PROFILE_ORIENTATION:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field static final SEAMLESS_ROTATION_TIMEOUT_DURATION:I = 0x7d0

.field private static final SIZE_OVERRIDE:Ljava/lang/String; = "ro.config.size_override"

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WINDOWS_FREEZING_SCREENS_ACTIVE:I = 0x1

.field static final WINDOWS_FREEZING_SCREENS_NONE:I = 0x0

.field static final WINDOWS_FREEZING_SCREENS_TIMEOUT:I = 0x2

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field static final WINDOW_FREEZE_TIMEOUT_DURATION:I = 0x7d0

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final WINDOW_REPLACEMENT_TIMEOUT_DURATION:I = 0x7d0

.field static final localLOGV:Z

.field static mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

.field static final mEnableAnimCheck:Z

.field static mFocusingWindow:Lcom/android/server/wm/WindowState;

.field public static mHallFlag:Z

.field public static mTestFlag:Z

.field private static sInstance:Lcom/android/server/wm/WindowManagerService;

.field static sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;


# instance fields
.field mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field final mActivityManager:Landroid/app/IActivityManager;

.field final mActivityManagerAppTransitionNotifier:Landroid/view/WindowManagerInternal$AppTransitionListener;

.field final mAllowAnimationsInLowPowerMode:Z

.field final mAllowBootMessages:Z

.field mAllowTheaterModeWakeFromLayout:Z

.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field mAnimateWallpaperWithTarget:Z

.field final mAnimationHandler:Landroid/os/Handler;

.field private mAnimationsDisabled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field private mAnimatorDurationScaleSetting:F

.field final mAppFreezeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$AppFreezeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field mAppsFreezingScreen:I

.field mBootAnimationStopped:Z

.field final mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

.field mClientFreezingScreen:Z

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentProfileIds:[I

.field mCurrentUserId:I

.field mDeferredRotationPauseCount:I

.field final mDestroyPreservedSurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayEnabled:Z

.field mDisplayFreezeTime:J

.field mDisplayFrozen:Z

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mDisplayReady:Z

.field final mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

.field private final mDisplays:[Landroid/view/Display;

.field mDockedStackCreateBounds:Landroid/graphics/Rect;

.field mDockedStackCreateMode:I

.field mDragState:Lcom/android/server/wm/DragState;

.field final mDrawLockTimeoutMillis:J

.field mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

.field mDummyVisibleAppEnter:Z

.field mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

.field private mEnterAnimId:I

.field private mEventDispatchingEnabled:Z

.field private mExitAnimId:I

.field final mFinishedEarlyAnim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mFocusingActivity:Ljava/lang/String;

.field mForceDisplayEnabled:Z

.field final mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForceResizableTasks:Z

.field private mFrozenDisplayId:I

.field final mFxSession:Landroid/view/SurfaceSession;

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardStatusChangeListener:Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

.field final mHasPermanentDpad:Z

.field private mHasWideColorGamutSupport:Z

.field final mHaveInputMethods:Z

.field private mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHoldingScreenOn:Lcom/android/server/wm/Session;

.field private mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field mInTouchMode:Z

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mIsInMultiWindowMode:Z

.field mIsTouchDevice:Z

.field private final mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

.field mKeyguardGoingAway:Z

.field mLastANRState:Ljava/lang/String;

.field mLastDispatchedSystemUiVisibility:I

.field mLastDisplayFreezeDuration:I

.field mLastFinishedFreezeSource:Ljava/lang/Object;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mMaxUiWidth:I

.field mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

.field mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mOnlyCore:Z

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Lcom/android/server/wm/RootWindowContainer;

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$RotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field private mScreenCaptureDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field final mScreenRect:Landroid/graphics/Rect;

.field mSeamlessRotationCount:I

.field final mSessions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

.field mShowAlertWindowNotifications:Z

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSupportsPictureInPicture:Z

.field mSwitchingUser:Z

.field mSystemBooted:Z

.field mSystemDecorLayer:I

.field mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

.field mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field private mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

.field final mTmpFloats:[F

.field final mTmpRect:Landroid/graphics/Rect;

.field final mTmpRect2:Landroid/graphics/Rect;

.field final mTmpRect3:Landroid/graphics/Rect;

.field final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpTaskIds:Landroid/util/SparseIntArray;

.field final mTmpTransform:Landroid/graphics/Matrix;

.field mTransactionSequence:I

.field private mTransitionAnimationScaleSetting:F

.field mTurnOnScreen:Z

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mVr2dDisplayId:I

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForDrawnCallback:Ljava/lang/Runnable;

.field final mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

.field mWatermark:Lcom/android/server/wm/Watermark;

.field private final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowAnimationScaleSetting:F

.field final mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;

.field final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

.field final mWindowReplacementTimeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowsChanged:Z

.field mWindowsFreezingScreen:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/WindowManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wm/WindowManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateTalkbackWatermark(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->finishPositioning()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateAppOpsState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string/jumbo v0, "persist.vendor.qti.animcheck.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->mEnableAnimCheck:Z

    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    sput-boolean v1, Lcom/android/server/wm/WindowManagerService;->mTestFlag:Z

    sput-boolean v1, Lcom/android/server/wm/WindowManagerService;->mHallFlag:Z

    new-instance v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)V
    .registers 16

    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    new-instance v5, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    new-instance v5, Lcom/android/server/wm/WindowHashMap;

    invoke-direct {v5}, Lcom/android/server/wm/WindowHashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    const/16 v5, 0x14

    new-array v5, v5, [Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    const/16 v5, 0x9

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpTaskIds:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-direct {v5}, Lcom/android/server/wm/WallpaperVisibilityListeners;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    new-instance v5, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {v5, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Landroid/view/WindowManagerInternal$AppTransitionListener;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v5, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    const/4 v5, 0x5

    invoke-static {p0, v5}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v5, p0}, Lcom/android/server/wm/RootWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120094

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-class v5, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance v5, Lcom/android/server/wm/DisplaySettings;

    invoke-direct {v5}, Lcom/android/server/wm/DisplaySettings;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplaySettings;->readSettingsLocked()V

    new-instance v5, Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowSurfacePlacer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v5, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const-class v5, Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v5, :cond_26e

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v6, "WindowManager"

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    if-eqz v3, :cond_26c

    new-instance v5, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v5, v3}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    :goto_242
    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    :goto_244
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v5, "display"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplays:[Landroid/view/Display;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplays:[Landroid/view/Display;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_262
    if-ge v5, v7, :cond_272

    aget-object v1, v6, v5

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->createDisplayContentLocked(Landroid/view/Display;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_262

    :cond_26c
    const/4 v5, 0x0

    goto :goto_242

    :cond_26e
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    goto :goto_244

    :cond_272
    new-instance v5, Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v5, v6, v7}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const-string/jumbo v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-class v5, Landroid/os/PowerManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManagerInternal;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_2ab

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v6, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v5

    iget-boolean v5, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    :cond_2ab
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v6, "SCREEN_FROZEN"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v5, Lcom/android/server/wm/AppTransition;

    invoke-direct {v5, p1, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v5, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v5}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    new-instance v5, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v5, p1, v6, v7, v0}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v5, "appops"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x2d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "window_animation_scale"

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "transition_animation_scale"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "animator_duration_scale"

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v6, "WindowManager"

    const v7, 0x2000000a

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v5, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    const-class v5, Landroid/view/WindowManagerInternal;

    new-instance v6, Lcom/android/server/wm/WindowManagerService$LocalService;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$LocalService;)V

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initPolicy()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_3ab
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V
    :try_end_3ae
    .catchall {:try_start_3ab .. :try_end_3ae} :catchall_3b8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlayIfNeeded()V

    return-void

    :catchall_3b8
    move-exception v5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v5
.end method

.method private animationScalesCheck(I)F
    .registers 7

    const/high16 v0, -0x40800000    # -1.0f

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-nez v1, :cond_3a

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->mEnableAnimCheck:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-nez v1, :cond_19

    new-instance v1, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v1}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    :cond_19
    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    move-result v0

    :cond_27
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_30

    packed-switch p1, :pswitch_data_3c

    :cond_30
    :goto_30
    return v0

    :pswitch_31
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    goto :goto_30

    :pswitch_34
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_30

    :pswitch_37
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_30

    :cond_3a
    const/4 v0, 0x0

    goto :goto_30

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_34
        :pswitch_37
    .end packed-switch
.end method

.method static boostPriorityForLockedSection()V
    .registers 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->boost()V

    return-void
.end method

.method private checkBootAnimationCompleteLocked()Z
    .registers 5

    const/16 v1, 0x25

    const-string/jumbo v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    return v0

    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method private computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    .registers 5

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return-object v2

    :cond_6
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method private createDisplayContentLocked(Landroid/view/Display;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getDisplayContent: display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 11

    const-wide/16 v4, 0x20

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    :cond_17
    iget-boolean v1, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_1d

    or-int/lit8 p2, p2, 0x4

    :cond_1d
    :try_start_1d
    const-string/jumbo v1, "createSurfaceControl"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p4, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_38

    move-result-object v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v0, :cond_3d

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    :goto_37
    return p2

    :catchall_38
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    :cond_3d
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create surface control for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    goto :goto_37
.end method

.method static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .registers 4

    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private displayReady(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    :cond_16
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z
    .registers 12

    const/16 v7, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_15

    iget-object v4, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_13

    iget-object v4, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    if-lt v4, v7, :cond_11

    :goto_10
    return v2

    :cond_11
    move v2, v3

    goto :goto_10

    :cond_13
    move v2, v3

    goto :goto_10

    :cond_15
    :try_start_15
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p2, :cond_4f

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not in UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_4d
    move-exception v1

    :cond_4e
    return v3

    :cond_4f
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_51} :catch_4d

    if-lt v4, v7, :cond_4e

    return v2
.end method

.method private dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string/jumbo v1, "    "

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method private dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3

    const-string/jumbo v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string/jumbo v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string/jumbo v1, "    "

    invoke-interface {v0, v1, p1, p2}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .registers 6

    const-string/jumbo v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    const-string/jumbo v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2e
    return-void
.end method

.method private dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .registers 4

    const-string/jumbo v0, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpTokens(Ljava/io/PrintWriter;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_46

    :cond_1d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_33

    const-string/jumbo v0, "  mOpeningApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_46

    const-string/jumbo v0, "  mClosingApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_46
    return-void
.end method

.method private dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 15

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "apps"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "visible"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "visible-apps"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :cond_22
    const-string/jumbo v3, "apps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v3, "visible"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz v0, :cond_3d

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1, v0, v2}, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;-><init>(BZZLjava/lang/Object;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_54

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_4d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_70

    return v8

    :catchall_54
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_5a
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_5d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_6a

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_4d

    :catchall_6a
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_70
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p5, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_7e

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :catchall_7e
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/16 v5, 0x20

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Hiding System Alert Windows:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_21
    if-ltz v1, :cond_4f

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const-string/jumbo v4, "  #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_4b

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_4b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_48

    :cond_4f
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9e

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Remove pending for:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_68
    if-ltz v1, :cond_9e

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_7a

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    :cond_7a
    const-string/jumbo v4, "  Remove #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_9a

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_97
    :goto_97
    add-int/lit8 v1, v1, -0x1

    goto :goto_68

    :cond_9a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_97

    :cond_9e
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e9

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Windows force removing:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_bb
    if-ltz v1, :cond_e9

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const-string/jumbo v4, "  Removing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_e5

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_bb

    :cond_e5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_e2

    :cond_e9
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_138

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_102
    if-ltz v1, :cond_138

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_114

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_131

    :cond_114
    const-string/jumbo v4, "  Destroy #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_134

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_131
    :goto_131
    add-int/lit8 v1, v1, -0x1

    goto :goto_102

    :cond_134
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_131

    :cond_138
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_187

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Windows losing focus:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_151
    if-ltz v1, :cond_187

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_163

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_180

    :cond_163
    const-string/jumbo v4, "  Losing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_183

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_180
    :goto_180
    add-int/lit8 v1, v1, -0x1

    goto :goto_151

    :cond_183
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_180

    :cond_187
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Windows waiting to resize:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1a0
    if-ltz v1, :cond_1d6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_1b2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    :cond_1b2
    const-string/jumbo v4, "  Resizing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_1d2

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_1cf
    :goto_1cf
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a0

    :cond_1d2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1cf

    :cond_1d6
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_20b

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1ef
    if-ltz v1, :cond_20b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    const-string/jumbo v4, "  Waiting #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1ef

    :cond_20b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  mGlobalConfiguration="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v4, "  mHasPermanentDpad="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v4, "  mCurrentFocus="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v4, v5, :cond_244

    const-string/jumbo v4, "  mLastFocus="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_244
    const-string/jumbo v4, "  mFocusedApp="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_25e

    const-string/jumbo v4, "  mInputMethodTarget="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_25e
    const-string/jumbo v4, "  mInTouchMode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v4, " mLayoutSeq="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v4, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v4, :cond_28f

    const-string/jumbo v4, " due to "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_28f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  mLastWakeLockHoldingWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v4, " mLastWakeLockObscuringWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v5, "  "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    const-string/jumbo v5, "  "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const-string/jumbo v5, "  "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/TaskSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz p2, :cond_3f8

    const-string/jumbo v4, "  mSystemDecorLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " mScreenRect="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v4, :cond_2f2

    const-string/jumbo v4, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_301

    const-string/jumbo v4, "  mInputMethodWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_301
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string/jumbo v5, "  "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const-string/jumbo v5, "  "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v4, "  mSystemBooted="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v4, " mDisplayEnabled="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V

    const-string/jumbo v4, "  mTransactionSequence="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v4, "  mDisplayFrozen="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v4, " windows="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " client="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v4, " apps="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " waitingForConfig="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-string/jumbo v4, "  mRotation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " mAltOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v4, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastWindowForcedOrientation()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " mLastOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v4, "  mDeferredRotationPauseCount="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v4, "  Animation settings: disabled="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v4, " window="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v4, " transition="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v4, " animator="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v4, "  mSkipAppTransitionAnimation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v4, "  mLayoutToAnim:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-string/jumbo v5, "    "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/AppTransition;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_3f8
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x7d0 -> :sswitch_5
        0x7dc -> :sswitch_5
        0x7e3 -> :sswitch_5
    .end sparse-switch
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1f

    move-result-object v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private finishPositioning()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1d

    :cond_18
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method static fixScale(F)F
    .registers 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_b
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a00000    # 20.0f

    goto :goto_6
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    move-result-object v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getForcedDisplayDensityForUserLocked(I)I
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_density_forced"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    :cond_16
    const-string/jumbo v2, "ro.config.density_override"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    :try_start_25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_28} :catch_2a

    move-result v2

    return v2

    :catch_2a
    move-exception v1

    :cond_2b
    sget v2, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    return v2
.end method

.method static getInstance()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 9

    array-length v3, p0

    if-ge p1, v3, :cond_13

    aget-object v1, p0, p1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    :try_start_d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    move-result v2

    return v2

    :catch_12
    move-exception v0

    :cond_13
    if-nez p2, :cond_16

    return p3

    :cond_16
    int-to-float v3, p3

    invoke-static {p2, v3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    return v2
.end method

.method private handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V
    .registers 14

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_32

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v3

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_37

    move-result v0

    if-nez v0, :cond_24

    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_24
    :try_start_24
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_37

    :goto_26
    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-ltz v8, :cond_31

    :try_start_2c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, v8}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_3d

    :cond_31
    :goto_31
    return-void

    :cond_32
    :try_start_32
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(II)I
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    move-result v8

    goto :goto_26

    :catchall_37
    move-exception v0

    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catch_3d
    move-exception v6

    goto :goto_31
.end method

.method private initMiuiGestureController()V
    .registers 3

    new-instance v0, Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/PointerEventDispatcher;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$9;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->registerGestureCallback(Lcom/android/server/wm/MiuiGestureController$GestureCallback;)V

    return-void
.end method

.method private initPolicy()V
    .registers 5

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isSystemSecure()Z
    .registers 4

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.secure"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "ro.debuggable"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static synthetic lambda$-com_android_server_wm_WindowManagerService_190361(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_WindowManagerService_197928(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic lambda$-com_android_server_wm_WindowManagerService_297927(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 5

    if-eqz p0, :cond_a

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    if-eqz p1, :cond_10

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    :cond_10
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_WindowManagerService_304759(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_WindowManagerService_347423(ZLcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_WindowManagerService_44169(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)V
    .registers 13

    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_27

    sget-object v1, Lcom/android/server/wm/WindowManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void

    :cond_27
    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method static logWithStack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 14

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/server/wm/-$Lambda$eBBEuGZ8VbEXJy0r5EYYbvnl-8w$1;

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/-$Lambda$eBBEuGZ8VbEXJy0r5EYYbvnl-8w$1;-><init>(ZZZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private notifyFocusChanged()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    move-result v3

    if-eqz v3, :cond_13

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_33

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    array-length v0, v2

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_39

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :catchall_33
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_39
    return-void
.end method

.method private notifyWindowsChanged()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    move-result v3

    if-eqz v3, :cond_13

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_33

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    array-length v0, v2

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_39

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :catchall_33
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_39
    return-void
.end method

.method private performEnableScreen()V
    .registers 11

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-eqz v4, :cond_22

    const-string/jumbo v4, ""

    const-string/jumbo v6, "vold.encrypt_progress"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_f1

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_22

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_22
    :try_start_22
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_f1

    if-eqz v4, :cond_2b

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2b
    :try_start_2b
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v4, :cond_3a

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_f1

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3a

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3a
    :try_start_3a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->canDismissBootAnimation()Z
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_f1

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4d

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4d
    :try_start_4d
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v4, :cond_60

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->checkWaitingForWindows()Z
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_f1

    move-result v4

    if-eqz v4, :cond_60

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_60
    :try_start_60
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    if-nez v4, :cond_79

    const-string/jumbo v4, "Stop bootanim"

    const-wide/16 v6, 0x20

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v4, "service.bootanim.exit"

    const-string/jumbo v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    :cond_79
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v4, :cond_8a

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z
    :try_end_80
    .catchall {:try_start_60 .. :try_end_80} :catchall_f1

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8a

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8a
    :try_start_8a
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_af

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "******* TELLING SURFACE FLINGER WE ARE BOOTED!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v0, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_af} :catch_e6
    .catchall {:try_start_8a .. :try_end_af} :catchall_f1

    :cond_af
    :goto_af
    :try_start_af
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/16 v4, 0x791f

    invoke-static {v4, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string/jumbo v4, "Stop bootanim"

    const-wide/16 v6, 0x20

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "******************** ENABLING SCREEN!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V
    :try_end_d4
    .catchall {:try_start_af .. :try_end_d4} :catchall_f1

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_d8
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->bootAnimationComplete()V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_dd} :catch_f7

    :goto_dd
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    invoke-direct {p0, v9, v9}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catch_e6
    move-exception v2

    :try_start_e7
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_f1

    goto :goto_af

    :catchall_f1
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :catch_f7
    move-exception v1

    goto :goto_dd
.end method

.method private prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_20
    return-void
.end method

.method private prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 10

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v2, 0x0

    return v2

    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x12

    invoke-virtual {p0, v2, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    return v7
.end method

.method private static queryWideColorGamutSupport()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v3, v1, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v3

    :catch_d
    move-exception v0

    :cond_e
    const/4 v3, 0x0

    return v3
.end method

.method private readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 14

    const/16 v11, 0x2c

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_size_forced"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_20

    :cond_19
    const-string/jumbo v7, "ro.config.size_override"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_20
    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_79

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_79

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ne v7, v4, :cond_79

    const/4 v7, 0x0

    :try_start_35
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v7, v6, :cond_4f

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v7, v2, :cond_79

    :cond_4f
    const-string/jumbo v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FORCED DISPLAY SIZE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v6, v2, v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_79} :catch_9f

    :cond_79
    :goto_79
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v0

    if-eqz v0, :cond_83

    iput v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_83
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_scaling_force"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9e

    const-string/jumbo v7, "WindowManager"

    const-string/jumbo v8, "FORCED DISPLAY SCALING DISABLED"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    :cond_9e
    return-void

    :catch_9f
    move-exception v1

    goto :goto_79
.end method

.method static resetPriorityAfterLockedSection()V
    .registers 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->reset()V

    return-void
.end method

.method private screenshotApplications(Landroid/os/IBinder;IIIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;
    .registers 19

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_28

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v1, 0x0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_14
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->screenshotApplications(Landroid/os/IBinder;IIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :catchall_28
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private setAnimatorDurationScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    return-void
.end method

.method private setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 3

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 7

    const/4 v1, 0x0

    const-string/jumbo v2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Using display scaling mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_29

    const-string/jumbo v0, "auto"

    :goto_15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2d

    const/4 v0, 0x1

    :goto_23
    iput-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void

    :cond_29
    const-string/jumbo v0, "off"

    goto :goto_15

    :cond_2d
    move v0, v1

    goto :goto_23
.end method

.method private setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using new display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .registers 14

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    iput p2, v7, Landroid/view/DisplayInfo;->overscanLeft:I

    iput p3, v7, Landroid/view/DisplayInfo;->overscanTop:I

    iput p4, v7, Landroid/view/DisplayInfo;->overscanRight:I

    iput p5, v7, Landroid/view/DisplayInfo;->overscanBottom:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v1, v7, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, v7, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplaySettings;->setOverscanLocked(Ljava/lang/String;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplaySettings;->writeSettingsLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    :cond_13
    return-void
.end method

.method private showStrictModeViolation(II)V
    .registers 8

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->canShowStrictModeViolation(I)Z
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_46

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_3

    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_46

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v1, :cond_34

    new-instance v1, Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v3, v4}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_41

    :try_start_39
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_46

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_41
    move-exception v1

    :try_start_42
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .registers 16

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-nez v0, :cond_26

    :cond_b
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositioningLocked: Bad window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_26
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_53

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositioningLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has no input channel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " probably being removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_53
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_64

    return v4

    :cond_64
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-nez v7, :cond_85

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositioningLocked: Invalid display content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_85
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v0, Lcom/android/server/wm/TaskPositioner;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskPositioner;->register(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    move-object v8, p1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_ad

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_ad

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    :cond_ad
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, v8, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v2, v2, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    if-nez v0, :cond_d1

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return v4

    :cond_d1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioner;->startDrag(Lcom/android/server/wm/WindowState;ZZFF)V

    return v9
.end method

.method private tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z
    .registers 12

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    const/4 v1, 0x5

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p2, v1, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    move p4, p3

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :goto_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_2e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_2e
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return p4

    :cond_38
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_47

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_1f

    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_1f

    :cond_5a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_61

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    :cond_61
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_99

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v2, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    :goto_69
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_9b

    iput-boolean v5, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_99
    const/4 v0, 0x0

    goto :goto_69

    :cond_9b
    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v5, v0}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    goto/16 :goto_1f
.end method

.method private updateAppOpsState()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateAppOpsState()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private updateCircularDisplayMaskIfNeeded()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_4d

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_display_inversion_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_53

    const/4 v3, 0x0

    :goto_3d
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_4c
    return-void

    :catchall_4d
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_53
    const/4 v3, 0x1

    goto :goto_3d
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .registers 12

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v4, :cond_8

    return-object v5

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0, v6, p3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz p2, :cond_24

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v4, v4, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    :cond_24
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v2

    :cond_28
    :goto_28
    return-object v2

    :cond_29
    if-eqz p1, :cond_28

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->unset()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_28

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_69

    aput v6, v0, v7

    aput v6, v0, v6

    :goto_5a
    aget v4, v0, v6

    aget v5, v0, v7

    invoke-virtual {p0, v6, v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_28

    :cond_69
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    goto :goto_5a
.end method

.method private updateRotationUnchecked(ZZ)V
    .registers 15

    const-wide/16 v10, 0x20

    const-string/jumbo v5, "updateRotation"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_c
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_6a

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-string/jumbo v5, "updateRotation: display"

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v4

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v4, :cond_2c

    if-eqz p2, :cond_41

    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const-string/jumbo v5, "updateRotation: performSurfacePlacement"

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_41
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_64

    move-result v1

    :try_start_45
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez v4, :cond_4d

    if-eqz p1, :cond_5d

    :cond_4d
    const-string/jumbo v5, "updateRotation: sendNewConfiguration"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_6a

    :cond_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_64
    move-exception v5

    :try_start_65
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .registers 5

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    if-ne v1, p1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    xor-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    not-int v2, p1

    and-int v0, v1, v2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    const/4 v1, 0x1

    return v1
.end method

.method private updateTalkbackWatermark(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 53

    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v37

    if-eqz v37, :cond_14

    return v37

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p4

    invoke-static {v5, v0, v8, v11}, Lcom/android/server/wm/WindowManagerServiceInjector;->adjustWindowParams(Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V

    const/16 v36, 0x0

    const/16 v33, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual/range {p4 .. p4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v41, v0

    monitor-enter v41

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v5, :cond_5c

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Display has not been initialialized"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v5

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_5c
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-nez v9, :cond_92

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_5c .. :try_end_8b} :catchall_56

    const/16 v5, -0x9

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_92
    :try_start_92
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v5

    if-nez v5, :cond_d8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/hardware/display/DisplayManagerInternal;->isUidPresentOnDisplay(II)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d8

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_92 .. :try_end_d1} :catchall_56

    const/16 v5, -0x9

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_d8
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Window "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " is already added"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_d8 .. :try_end_109} :catchall_56

    const/4 v5, -0x5

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_10f
    const/16 v5, 0x3e8

    if-lt v7, v5, :cond_18f

    const/16 v5, 0x7cf

    if-gt v7, v5, :cond_18f

    :try_start_117
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v11}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v33

    if-nez v33, :cond_150

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add window with token that is not a window: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_117 .. :try_end_14a} :catchall_56

    const/4 v5, -0x2

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_150
    :try_start_150
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-lt v5, v8, :cond_18f

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7cf

    if-gt v5, v8, :cond_18f

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catchall {:try_start_150 .. :try_end_189} :catchall_56

    const/4 v5, -0x2

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_18f
    const/16 v5, 0x7ee

    if-ne v7, v5, :cond_1aa

    :try_start_193
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1aa

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v8, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a4
    .catchall {:try_start_193 .. :try_end_1a4} :catchall_56

    const/4 v5, -0x8

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_1aa
    const/16 v25, 0x0

    if-eqz v33, :cond_200

    const/16 v29, 0x1

    :goto_1b0
    if-eqz v29, :cond_203

    :try_start_1b2
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1b8
    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v4

    if-eqz v29, :cond_208

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    :goto_1c6
    const/16 v23, 0x0

    if-nez v4, :cond_3dd

    const/4 v5, 0x1

    move/from16 v0, v38

    if-lt v0, v5, :cond_20b

    const/16 v5, 0x63

    move/from16 v0, v38

    if-gt v0, v5, :cond_20b

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add application window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fa
    .catchall {:try_start_1b2 .. :try_end_1fa} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_200
    const/16 v29, 0x0

    goto :goto_1b0

    :cond_203
    :try_start_203
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1b8

    :cond_208
    move/from16 v38, v7

    goto :goto_1c6

    :cond_20b
    const/16 v5, 0x7db

    move/from16 v0, v38

    if-ne v0, v5, :cond_23c

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add input method window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catchall {:try_start_203 .. :try_end_236} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_23c
    const/16 v5, 0x7ef

    move/from16 v0, v38

    if-ne v0, v5, :cond_26d

    :try_start_242
    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add voice interaction window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_267
    .catchall {:try_start_242 .. :try_end_267} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_26d
    const/16 v5, 0x7dd

    move/from16 v0, v38

    if-ne v0, v5, :cond_29e

    :try_start_273
    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_298
    .catchall {:try_start_273 .. :try_end_298} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_29e
    const/16 v5, 0x7e7

    move/from16 v0, v38

    if-ne v0, v5, :cond_2cf

    :try_start_2a4
    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add Dream window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c9
    .catchall {:try_start_2a4 .. :try_end_2c9} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_2cf
    const/16 v5, 0x7f3

    move/from16 v0, v38

    if-ne v0, v5, :cond_300

    :try_start_2d5
    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add QS dialog window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fa
    .catchall {:try_start_2d5 .. :try_end_2fa} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_300
    const/16 v5, 0x7f0

    move/from16 v0, v38

    if-ne v0, v5, :cond_331

    :try_start_306
    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add Accessibility overlay window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32b
    .catchall {:try_start_306 .. :try_end_32b} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_331
    const/16 v5, 0x7d5

    if-ne v7, v5, :cond_370

    :try_start_335
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v33

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_370

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add a toast window with unknown token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36a
    .catchall {:try_start_335 .. :try_end_36a} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_370
    :try_start_370
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v5, :cond_3d8

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_37a
    new-instance v4, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    :cond_386
    :goto_386
    new-instance v10, Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    aget v16, v24, v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    move/from16 v21, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v4

    move-object/from16 v15, v33

    move/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v10 .. v21}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V

    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v5, :cond_60d

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Adding window client "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " that is dead, aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d2
    .catchall {:try_start_370 .. :try_end_3d2} :catchall_56

    const/4 v5, -0x4

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_3d8
    :try_start_3d8
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_37a

    :cond_3dd
    const/4 v5, 0x1

    move/from16 v0, v38

    if-lt v0, v5, :cond_442

    const/16 v5, 0x63

    move/from16 v0, v38

    if-gt v0, v5, :cond_442

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v25

    if-nez v25, :cond_415

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add window with non-application token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40f
    .catchall {:try_start_3d8 .. :try_end_40f} :catchall_56

    const/4 v5, -0x3

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_415
    :try_start_415
    move-object/from16 v0, v25

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v5, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add window with exiting application token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43c
    .catchall {:try_start_415 .. :try_end_43c} :catchall_56

    const/4 v5, -0x4

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_442
    const/16 v5, 0x7db

    move/from16 v0, v38

    if-ne v0, v5, :cond_479

    :try_start_448
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7db

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add input method window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_473
    .catchall {:try_start_448 .. :try_end_473} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_479
    const/16 v5, 0x7ef

    move/from16 v0, v38

    if-ne v0, v5, :cond_4b0

    :try_start_47f
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7ef

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add voice interaction window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4aa
    .catchall {:try_start_47f .. :try_end_4aa} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_4b0
    const/16 v5, 0x7dd

    move/from16 v0, v38

    if-ne v0, v5, :cond_4e7

    :try_start_4b6
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e1
    .catchall {:try_start_4b6 .. :try_end_4e1} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_4e7
    const/16 v5, 0x7e7

    move/from16 v0, v38

    if-ne v0, v5, :cond_51e

    :try_start_4ed
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7e7

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add Dream window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_518
    .catchall {:try_start_4ed .. :try_end_518} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_51e
    const/16 v5, 0x7f0

    move/from16 v0, v38

    if-ne v0, v5, :cond_555

    :try_start_524
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7f0

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add Accessibility overlay window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54f
    .catchall {:try_start_524 .. :try_end_54f} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_555
    const/16 v5, 0x7d5

    if-ne v7, v5, :cond_59a

    :try_start_559
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v33

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v23

    if-eqz v23, :cond_386

    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7d5

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add a toast window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_594
    .catchall {:try_start_559 .. :try_end_594} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_59a
    const/16 v5, 0x7f3

    if-ne v7, v5, :cond_5cf

    :try_start_59e
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7f3

    if-eq v5, v8, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attempted to add QS dialog window with bad token "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ".  Aborting."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c9
    .catchall {:try_start_59e .. :try_end_5c9} :catchall_56

    const/4 v5, -0x1

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_5cf
    :try_start_5cf
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    if-eqz v5, :cond_386

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Non-null appWindowToken for system window of rootType="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    new-instance v4, Lcom/android/server/wm/WindowToken;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    move/from16 v16, v0

    const/4 v14, 0x0

    move-object v10, v4

    move-object/from16 v11, p0

    move v13, v7

    move-object v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    goto/16 :goto_386

    :cond_60d
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-nez v5, :cond_623

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v8, "Adding window to Display that has been removed."

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61c
    .catchall {:try_start_5cf .. :try_end_61c} :catchall_56

    const/16 v5, -0x9

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_623
    :try_start_623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v8}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Landroid/view/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v5, v10, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    :try_end_642
    .catchall {:try_start_623 .. :try_end_642} :catchall_56

    move-result v37

    if-eqz v37, :cond_64a

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v37

    :cond_64a
    if-eqz p10, :cond_67f

    :try_start_64c
    move-object/from16 v0, p4

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_67c

    const/16 v32, 0x1

    :goto_656
    if-eqz v32, :cond_65d

    move-object/from16 v0, p10

    invoke-virtual {v10, v0}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    :cond_65d
    const/16 v5, 0x7d5

    if-ne v7, v5, :cond_6a1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->canAddToastWindowForUid(I)Z

    move-result v5

    if-nez v5, :cond_682

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v8, "Adding more than one toast window for UID at a time."

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_676
    .catchall {:try_start_64c .. :try_end_676} :catchall_56

    const/4 v5, -0x5

    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_67c
    const/16 v32, 0x0

    goto :goto_656

    :cond_67f
    const/16 v32, 0x0

    goto :goto_656

    :cond_682
    if-nez v23, :cond_68c

    :try_start_684
    move-object/from16 v0, p4

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_826

    :cond_68c
    :goto_68c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x34

    invoke-virtual {v8, v11, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v14, v11, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v5, v8, v14, v15}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6a1
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_6b0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b0
    invoke-static {v7}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v5

    if-eqz v5, :cond_6bb

    iget-object v5, v9, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6bb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->attach()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5, v8, v10}, Lcom/android/server/wm/WindowHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v10, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_6ef

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v8, v10, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v8, v11, v12}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v39

    if-eqz v39, :cond_6ef

    const/4 v5, 0x3

    move/from16 v0, v39

    if-eq v0, v5, :cond_6ef

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_6ef
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v30, v5, 0x1

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v22

    const/4 v5, 0x3

    if-ne v7, v5, :cond_70b

    if-eqz v22, :cond_70b

    move-object/from16 v0, v22

    iput-object v10, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    :cond_70b
    const/16 v31, 0x1

    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    const/16 v5, 0x7db

    if-ne v7, v5, :cond_838

    const/4 v5, 0x1

    iput-boolean v5, v10, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    const/16 v31, 0x0

    :cond_720
    :goto_720
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->applyAdjustForImeIfNeeded()V

    const/16 v5, 0x7f2

    if-ne v7, v5, :cond_738

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/server/wm/DockedStackDividerController;->setWindow(Lcom/android/server/wm/WindowState;)V

    :cond_738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v5, :cond_745

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/MiuiGestureController;->tryToSetGestureStubWindow(Lcom/android/server/wm/WindowState;)V

    :cond_745
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    const/4 v5, 0x1

    move-object/from16 v0, v40

    iput-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v5, 0x1

    move-object/from16 v0, v40

    iput-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v25, :cond_76e

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_76e

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_76e

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V

    :cond_76e
    iget-boolean v5, v9, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_879

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v27

    if-eqz v25, :cond_876

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_876

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    :goto_78d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    iget v14, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, v27

    iget v15, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v16, v0

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    invoke-interface/range {v11 .. v19}, Landroid/view/WindowManagerPolicy;->getInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_7af

    const/16 v37, 0x4

    :cond_7af
    :goto_7af
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v5, :cond_7b7

    or-int/lit8 v37, v37, 0x1

    :cond_7b7
    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_7c5

    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7c7

    :cond_7c5
    or-int/lit8 v37, v37, 0x2

    :cond_7c7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/16 v28, 0x0

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v5

    if-eqz v5, :cond_7e2

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v28

    if-eqz v28, :cond_7e2

    const/16 v31, 0x0

    :cond_7e2
    if-eqz v31, :cond_7e8

    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_7e8
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    if-eqz v28, :cond_7fa

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    :cond_7fa
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v5

    if-eqz v5, :cond_815

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z
    :try_end_810
    .catchall {:try_start_684 .. :try_end_810} :catchall_56

    move-result v5

    if-eqz v5, :cond_815

    const/16 v36, 0x1

    :cond_815
    monitor-exit v41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v36, :cond_822

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    :cond_822
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v37

    :cond_826
    :try_start_826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_68c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    move/from16 v0, v26

    if-eq v5, v0, :cond_6a1

    goto/16 :goto_68c

    :cond_838
    const/16 v5, 0x7dc

    if-ne v7, v5, :cond_844

    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    const/16 v31, 0x0

    goto/16 :goto_720

    :cond_844
    const/16 v5, 0x7dd

    if-ne v7, v5, :cond_855

    iget-object v5, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    iget v5, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_720

    :cond_855
    move-object/from16 v0, p4

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v5, v8

    if-eqz v5, :cond_866

    iget v5, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_720

    :cond_866
    iget-object v5, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/WallpaperController;->isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_720

    iget v5, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_720

    :cond_876
    const/4 v13, 0x0

    goto/16 :goto_78d

    :cond_879
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_87f
    .catchall {:try_start_826 .. :try_end_87f} :catchall_56

    goto/16 :goto_7af
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .registers 19

    const-string/jumbo v1, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iget-object v14, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v14

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v13

    if-eqz v13, :cond_64

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addWindowToken: Attempted to add binder token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for already created window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_18 .. :try_end_5f} :catchall_87

    monitor-exit v14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_64
    const/16 v1, 0x7dd

    move/from16 v0, p2

    if-ne v0, v1, :cond_79

    :try_start_6a
    new-instance v1, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_87

    :goto_74
    monitor-exit v14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_79
    :try_start_79
    new-instance v6, Lcom/android/server/wm/WindowToken;

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_87

    goto :goto_74

    :catchall_87
    move-exception v1

    monitor-exit v14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZZ)Z
    .registers 35

    const-string/jumbo v2, "WM#applyAnimationLocked"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerServiceInjector;->interceptMiuiAiModeStackAppTransitionAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    return v2

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v19, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v28

    new-instance v8, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, v27

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v9, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    if-eqz v28, :cond_e6

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v14

    :goto_5d
    if-eqz v28, :cond_7c

    if-eqz v14, :cond_e9

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_68
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v11, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7c
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_84

    const/16 p4, 0x0

    :cond_84
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v25

    iget v6, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, v25

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v15, v3, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsInMultiWindowMode:Z

    move/from16 v16, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v13, p5

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIZ)Landroid/view/animation/Animation;

    move-result-object v16

    if-eqz v16, :cond_f2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v24

    move/from16 v23, p3

    invoke-virtual/range {v15 .. v24}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIIIZIII)V

    :goto_d7
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_109

    const/4 v2, 0x1

    :goto_e5
    return v2

    :cond_e6
    const/4 v14, 0x0

    goto/16 :goto_5d

    :cond_e9
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_68

    :cond_f2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowAnimator;->mNeedPendingShowSurface:Z

    goto :goto_d7

    :cond_fa
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowAnimator;->mNeedPendingShowSurface:Z

    goto :goto_d7

    :cond_109
    const/4 v2, 0x0

    goto :goto_e5
.end method

.method canDispatchPointerEvents()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public cancelMiuiThumbnailAnimation()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_d

    return v4

    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    return v4

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method checkDrawnWindowsLocked()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v2, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_15
    if-ltz v0, :cond_ca

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Waiting for drawn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mHasSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " drawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_81

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_81

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a4

    :cond_81
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Aborted waiting for drawn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_15

    :cond_a4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_a0

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Window drawn win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_ca
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e9

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "All windows drawn!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_e9
    return-void
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .registers 16

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-eqz p1, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "clearForcedDisplayDensityForUser"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const-string/jumbo v0, "persist.sys.miui_optimization"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    :try_start_3d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_77

    :try_start_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-nez v12, :cond_6e

    iget v8, v9, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_4d
    if-eqz v9, :cond_56

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v0, v7, :cond_56

    invoke-direct {p0, v9, v8}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    :cond_56
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "display_density_forced"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_71

    :try_start_66
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_77

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6e
    :try_start_6e
    sget v8, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_71

    goto :goto_4d

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public clearForcedDisplaySize(I)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    if-eqz p1, :cond_1f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Can only set the default display"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_23
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_55

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_47

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "display_size_forced"

    const-string/jumbo v6, ""

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_4f

    :cond_47
    :try_start_47
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_55

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v2, "android.permission.FRAME_STATS"

    const-string/jumbo v3, "clearWindowContentFrameStats()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires FRAME_STATS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_3f

    if-nez v1, :cond_2b

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_2b
    :try_start_2b
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_3f

    if-nez v0, :cond_36

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_36
    :try_start_36
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->clearWindowContentFrameStats()Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    move-result v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_3f
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method closeSurfaceTransaction()V
    .registers 7

    const-wide/16 v4, 0x20

    :try_start_2
    const-string/jumbo v0, "closeSurfaceTransaction"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_2e

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteEventTrace;->closeSurfaceTransaction()V

    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_28

    :try_start_20
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public computeNewConfiguration(I)Landroid/content/res/Configuration;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    move-result-object v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(Landroid/view/Display;III)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget v2, v6, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v3, v6, Landroid/view/DisplayInfo;->overscanTop:I

    iget v4, v6, Landroid/view/DisplayInfo;->overscanRight:I

    iget v5, v6, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->setDisplayOverscan(Landroid/view/Display;IIII)V

    return-void
.end method

.method public containsDismissKeyguardWindow(Landroid/os/IBinder;)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    move-result v1

    :goto_12
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_12

    :catchall_19
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsShowWhenLockedWindow(Landroid/os/IBinder;)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    move-result v1

    :goto_12
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_12

    :catchall_19
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public continueSurfaceLayout()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    move-result-object v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method createWatermarkInTransaction()V
    .registers 15

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v10, :cond_5

    return-void

    :cond_5
    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "/system/etc/setup.conf"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_61
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_50
    .catchall {:try_start_f .. :try_end_14} :catchall_72

    :try_start_14
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_8a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_91
    .catchall {:try_start_14 .. :try_end_19} :catchall_83

    :try_start_19
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3e

    const-string/jumbo v10, "%"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3e

    array-length v10, v9

    if-lez v10, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v10, Lcom/android/server/wm/Watermark;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v13, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/android/server/wm/Watermark;-><init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_3e} :catch_8d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3e} :catch_94
    .catchall {:try_start_19 .. :try_end_3e} :catchall_86

    :cond_3e
    if-eqz v7, :cond_48

    :try_start_40
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_46

    :cond_43
    :goto_43
    move-object v6, v7

    move-object v4, v5

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception v2

    goto :goto_43

    :cond_48
    if-eqz v5, :cond_43

    :try_start_4a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_43

    :catch_4e
    move-exception v2

    goto :goto_43

    :catch_50
    move-exception v2

    :goto_51
    if-eqz v6, :cond_59

    :try_start_53
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_45

    :catch_57
    move-exception v2

    goto :goto_45

    :cond_59
    if-eqz v4, :cond_45

    :try_start_5b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_45

    :catch_5f
    move-exception v2

    goto :goto_45

    :catch_61
    move-exception v1

    :goto_62
    if-eqz v6, :cond_6a

    :try_start_64
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_45

    :catch_68
    move-exception v2

    goto :goto_45

    :cond_6a
    if-eqz v4, :cond_45

    :try_start_6c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_45

    :catch_70
    move-exception v2

    goto :goto_45

    :catchall_72
    move-exception v10

    :goto_73
    if-eqz v6, :cond_7b

    :try_start_75
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    :cond_78
    :goto_78
    throw v10

    :catch_79
    move-exception v2

    goto :goto_78

    :cond_7b
    if-eqz v4, :cond_78

    :try_start_7d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_78

    :catch_81
    move-exception v2

    goto :goto_78

    :catchall_83
    move-exception v10

    move-object v4, v5

    goto :goto_73

    :catchall_86
    move-exception v10

    move-object v6, v7

    move-object v4, v5

    goto :goto_73

    :catch_8a
    move-exception v1

    move-object v4, v5

    goto :goto_62

    :catch_8d
    move-exception v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_62

    :catch_91
    move-exception v2

    move-object v4, v5

    goto :goto_51

    :catch_94
    move-exception v2

    move-object v6, v7

    move-object v4, v5

    goto :goto_51
.end method

.method public deferSurfaceLayout()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public destroyInputConsumer(Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public detectSafeMode()Z
    .registers 15

    const/4 v6, 0x1

    const/16 v13, -0x100

    const/4 v12, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v8

    if-nez v8, :cond_18

    const-string/jumbo v8, "WindowManager"

    const-string/jumbo v9, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "safe_boot_disallowed"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_28

    return v7

    :cond_28
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v9, 0x52

    invoke-virtual {v8, v12, v13, v9}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v2

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v9, 0x2f

    invoke-virtual {v8, v12, v13, v9}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v3

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v9, 0x201

    const/16 v10, 0x17

    invoke-virtual {v8, v12, v9, v10}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v9, 0x10004

    const/16 v10, 0x110

    invoke-virtual {v8, v12, v9, v10}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v4

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v9, 0x19

    invoke-virtual {v8, v12, v13, v9}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v5

    if-lez v2, :cond_d4

    if-lez v5, :cond_d4

    :cond_59
    :goto_59
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    :try_start_5b
    const-string/jumbo v6, "persist.sys.safemode"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6f

    const-string/jumbo v6, "ro.sys.safemode"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7b

    :cond_6f
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    const-string/jumbo v6, "persist.sys.safemode"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_7b} :catch_e7

    :cond_7b
    :goto_7b
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v6, :cond_dd

    const-string/jumbo v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SAFE MODE ENABLED (menu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dpad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " trackball="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ro.sys.safemode"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ca
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->setSafeMode(Z)V

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v6

    :cond_d4
    if-gtz v3, :cond_59

    if-gtz v0, :cond_59

    if-gtz v4, :cond_59

    move v6, v7

    goto/16 :goto_59

    :cond_dd
    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "SAFE MODE not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :catch_e7
    move-exception v1

    goto :goto_7b
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceInjector;->isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_39

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "current mode is SecurityMode, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "non-current profiles, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    if-nez p1, :cond_58

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public disableNonVrUi(Z)V
    .registers 7

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    xor-int/lit8 v2, p1, 0x1

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    if-ne v2, v3, :cond_11

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_11
    :try_start_11
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1b
    if-ltz v0, :cond_2d

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Session;->setShowingAlertWindowNotificationAllowed(Z)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_32

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_2d
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public disableSurfaceTrace()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_17

    if-eqz v0, :cond_17

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_17

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only shell can call disableSurfaceTrace"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->disableSurfaceTrace()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_27

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 4

    const-string/jumbo v0, "android.permission.CONTROL_KEYGUARD"

    const-string/jumbo v1, "dismissKeyguard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceInjector;->isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_26

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public displayReady()V
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplays:[Landroid/view/Display;

    array-length v5, v4

    :goto_4
    if-ge v3, v5, :cond_12

    aget-object v0, v4, v3

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    if-lez v3, :cond_25

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->setMaxUiWidth(I)V

    :cond_25
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_5f

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_2f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_6d

    :goto_35
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v5, "android.hardware.touchscreen"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_65

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_55
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5b} :catch_6b

    :goto_5b
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void

    :catchall_5f
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :catchall_65
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :catch_6b
    move-exception v2

    goto :goto_5b

    :catch_6d
    move-exception v2

    goto :goto_35
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/wm/WindowManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_f
    array-length v1, p3

    if-ge v4, v1, :cond_1c

    aget-object v6, p3, v4

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_43

    :cond_1c
    array-length v1, p3

    if-ge v4, v1, :cond_28e

    aget-object v2, p3, v4

    add-int/lit8 v4, v4, 0x1

    const-string/jumbo v0, "lastanr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_ee

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_43
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1c

    add-int/lit8 v4, v4, 0x1

    const-string/jumbo v1, "-a"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v5, 0x1

    goto :goto_f

    :cond_58
    const-string/jumbo v1, "-h"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    const-string/jumbo v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    a[animator]: animator state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    surfaces: active surfaces (debugging enabled only)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    d[isplays]: active display contents"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    \"visible-apps\" for the visible app windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown argument: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; use -h for help"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    :catchall_ee
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_f4
    const-string/jumbo v0, "policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    :cond_106
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_109
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    :try_end_110
    .catchall {:try_start_109 .. :try_end_110} :catchall_115

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_115
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_11b
    const-string/jumbo v0, "animator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    const-string/jumbo v0, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    :cond_12d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_13c

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13c
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_142
    const-string/jumbo v0, "sessions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_154

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    :cond_154
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_157
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    :try_end_15e
    .catchall {:try_start_157 .. :try_end_15e} :catchall_163

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_163
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_169
    const-string/jumbo v0, "surfaces"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_175
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->dumpAllSurfaces(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_17c
    .catchall {:try_start_175 .. :try_end_17c} :catchall_181

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_181
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_187
    const-string/jumbo v0, "displays"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    const-string/jumbo v0, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    :cond_199
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_19c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V
    :try_end_1a4
    .catchall {:try_start_19c .. :try_end_1a4} :catchall_1a9

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a9
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1af
    const-string/jumbo v0, "tokens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    :cond_1c1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_1c4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    :try_end_1cb
    .catchall {:try_start_1c4 .. :try_end_1cb} :catchall_1d0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1d6
    const-string/jumbo v0, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8

    const-string/jumbo v0, "w"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    :cond_1e8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_1eb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    :try_end_1f3
    .catchall {:try_start_1eb .. :try_end_1f3} :catchall_1f8

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f8
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1fe
    const-string/jumbo v0, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    const-string/jumbo v0, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    :cond_210
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_213
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    :try_end_21b
    .catchall {:try_start_213 .. :try_end_21b} :catchall_220

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_220
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_226
    const-string/jumbo v0, "containers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_267

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_232
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string/jumbo v3, " "

    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v8, 0x18

    invoke-direct {v3, v8, p2}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v8}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_25c
    .catchall {:try_start_232 .. :try_end_25c} :catchall_261

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_261
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_267
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_28d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28d
    return-void

    :cond_28e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_291
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_29f

    const-string/jumbo v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29f
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_2ad

    const-string/jumbo v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2ad
    invoke-direct {p0, p2, p3, v5}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_2bb

    const-string/jumbo v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2bb
    invoke-direct {p0, p2, p3, v5}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_2c9

    const-string/jumbo v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c9
    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_2d7

    const-string/jumbo v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2d7
    if-eqz v5, :cond_2dc

    const-string/jumbo v0, "-------------------------------------------------------------------------------"

    :cond_2dc
    invoke-static {p2, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->dumpAllSurfaces(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_2ea

    const-string/jumbo v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2ea
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_2fa

    const-string/jumbo v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2fa
    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_308

    const-string/jumbo v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_308
    const/4 v0, 0x0

    invoke-direct {p0, p2, v5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    :try_end_30c
    .catchall {:try_start_291 .. :try_end_30c} :catchall_311

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_311
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2b

    if-eqz v0, :cond_f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7530

    const/16 v4, 0x17

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_2b

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public enableScreenIfNeeded()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method enableScreenIfNeededLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enableSurfaceTrace(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-eqz v0, :cond_13

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only shell can call enableSurfaceTrace"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->enableSurfaceTrace(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public endProlongedAnimations()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowAnimator;->endProlongedAnimation()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_10

    :catchall_2a
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_30
    :try_start_30
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->notifyProlongedAnimationsEnded()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2a

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public executeAppTransition()V
    .registers 5

    const-string/jumbo v2, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setReady()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_3e

    move-result-wide v0

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_39

    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3e

    :cond_34
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_39
    move-exception v2

    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method executeEmptyAnimationTransaction()V
    .registers 7

    const-wide/16 v4, 0x20

    :try_start_2
    const-string/jumbo v0, "openSurfaceTransaction"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4c

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteEventTrace;->openSurfaceTransaction()V

    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteEventTrace;->closeSurfaceTransaction()V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_46

    :cond_30
    :try_start_30
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_4c

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :try_start_37
    const-string/jumbo v0, "closeSurfaceTransaction"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_51

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_51
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void
.end method

.method finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_42

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_2c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_3c

    :cond_34
    :try_start_34
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_42

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception v3

    :try_start_3d
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method finishFetchingAppTransitionSpecs()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-boolean v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_20

    :cond_1b
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public freezeRotation(I)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string/jumbo v1, "android.permission.SET_ORIENTATION"

    const-string/jumbo v4, "freezeRotation()"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires SET_ORIENTATION permission"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    if-lt p1, v5, :cond_1c

    const/4 v1, 0x3

    if-le p1, v1, :cond_25

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-ne p1, v5, :cond_3c

    :goto_31
    const/4 v4, 0x1

    invoke-interface {v1, v4, v0}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3e

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v6, v6}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :cond_3c
    move v0, p1

    goto :goto_31

    :catchall_3e
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getAnimationScale(I)F
    .registers 3

    packed-switch p1, :pswitch_data_e

    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0

    :pswitch_8
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0

    :pswitch_b
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getBaseDisplayDensity(I)I
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_25

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_1f
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, -0x1

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    :cond_20
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCameraLensCoverState()I
    .registers 7

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v2, -0x100

    const/16 v3, 0x9

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    if-nez v0, :cond_13

    return v4

    :cond_13
    return v5
.end method

.method public getCurrentAnimatorScale()F
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "getCurrentImeTouchRegion is restricted to VR services"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2d

    :cond_28
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_2d
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayRotation()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getDockedDividerInsetsLw()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    return v0
.end method

.method public getDockedStackSide()I
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v1, -0x1

    :goto_11
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_16
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    move-result v1

    goto :goto_11

    :catchall_1b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDragLayerLocked()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getFocusedWindowType()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public getHallFlag()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->mHallFlag:Z

    return v0
.end method

.method getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    :cond_15
    return-object v0
.end method

.method public getInitialDisplayDensity(I)I
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_25

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_1f
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, -0x1

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    :cond_20
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInputMethodWindowLw()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method public getLidState()I
    .registers 6

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v2, -0x100

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-lez v0, :cond_d

    return v3

    :cond_d
    if-nez v0, :cond_11

    const/4 v1, 0x1

    return v1

    :cond_11
    return v4
.end method

.method public getNavBarPosition()I
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getNavBarPosition()I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    move-result v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_1a
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPendingAppTransition()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 9

    const v7, 0x800053

    const/16 v6, 0x55

    const/16 v5, 0x51

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_49

    if-ge v2, v4, :cond_32

    packed-switch v1, :pswitch_data_50

    :pswitch_1e
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :pswitch_23
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :pswitch_28
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :pswitch_2d
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_32
    packed-switch v1, :pswitch_data_5c

    :pswitch_35
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :pswitch_3a
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :pswitch_3f
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :pswitch_44
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_49
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_44
    .end packed-switch
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getStableInsetsLocked(ILandroid/graphics/Rect;)V
    .registers 9

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-interface {v2, v3, v4, v5, p2}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    :cond_1a
    return-void
.end method

.method public getStackBounds(ILandroid/graphics/Rect;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_16
    :try_start_16
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getTestFlag()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->mTestFlag:Z

    return v0
.end method

.method public getTransitionAnimationScaleLocked()F
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowAnimationScaleLocked()F
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v3, "android.permission.FRAME_STATS"

    const-string/jumbo v4, "getWindowContentFrameStats()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires FRAME_STATS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_16
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_53

    if-nez v2, :cond_2b

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :cond_2b
    :try_start_2b
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_53

    if-nez v1, :cond_36

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    if-nez v3, :cond_41

    new-instance v3, Landroid/view/WindowContentFrameStats;

    invoke-direct {v3}, Landroid/view/WindowContentFrameStats;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowSurfaceController;->getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_53

    move-result v3

    if-nez v3, :cond_4e

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :cond_4e
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_53
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1f

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    :try_start_15
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    :cond_13
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransitionLocked()I
    .registers 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->setIdle()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_f
    if-ltz v2, :cond_21

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_21
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    const/4 v0, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v5, v4, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method hasWideColorGamutSupport()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_e
    return v0
.end method

.method public hideBootMessagesLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    :cond_c
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public inSurfaceTransaction(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_19

    :try_start_9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_14

    :try_start_c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_3d

    move-result v0

    if-eqz v0, :cond_16

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_3d

    move-result-object v2

    if-ne v0, v2, :cond_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_37
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_3d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public isAppTransitionSkipped()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isAppTransitionSkipped()Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .registers 5

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_13

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public isGestureOpen()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isGestureOpen()Z

    move-result v0

    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure(I)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_12
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardTrusted()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardTrustedLw()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isRotationFrozen()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getUserRotationMode()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSafeModeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method isScreenCaptureDisabledLocked(I)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    return v2

    :cond_b
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    :cond_18
    return v1
.end method

.method public isShowingDream()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isShowingDreamLw()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isValidPictureInPictureAspectRatio(IF)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    return v1
.end method

.method public isViewServerRunning()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    return v0

    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    :cond_1f
    return v0
.end method

.method synthetic lambda$-com_android_server_wm_WindowManagerService_138790(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_WindowManagerService_172543(Lcom/android/internal/app/IAssistScreenshotReceiver;)V
    .registers 14

    const/4 v3, -0x1

    const/4 v2, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, v3

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;

    move-result-object v10

    :try_start_10
    invoke-interface {p1, v10}, Lcom/android/internal/app/IAssistScreenshotReceiver;->send(Landroid/graphics/Bitmap;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v11

    goto :goto_13
.end method

.method public lockDeviceNow()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 7

    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v0, :cond_2c

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_2c
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .registers 7

    const/4 v2, 0x0

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-ne p2, v1, :cond_6

    return-void

    :cond_6
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz p2, :cond_32

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    :goto_10
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    if-nez v1, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_31
    return-void

    :cond_32
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto :goto_10
.end method

.method public monitor()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    monitor-exit v0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchesCleared(Landroid/os/IBinder;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearRelaunching()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunching(Landroid/os/IBinder;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->startRelaunching()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchingFinished(Landroid/os/IBinder;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->finishRelaunching()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppResumedFinished(Landroid/os/IBinder;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_18

    :cond_13
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method notifyHasSurfaceView(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1, v0, p3}, Lcom/android/server/wm/MiuiGestureController;->notifyHasSurfaceView(Lcom/android/server/wm/WindowState;Z)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    :cond_16
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V
    .registers 5

    if-eqz p1, :cond_14

    new-instance v0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public notifyKeyguardTrustedChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyShowingDreamChanged()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onDisplayAdded(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->createDisplayContentLocked(Landroid/view/Display;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    if-ne v1, p1, :cond_24

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2e

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onKeyguardOccludedChanged(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onKeyguardShowingAndNotOccludedChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/AccessibilityController;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_24

    :cond_1f
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onSystemUiStarted()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->onSystemUiStarted()V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_13

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    throw v0
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 7

    if-nez p2, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-nez p3, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0
.end method

.method openSurfaceTransaction()V
    .registers 7

    const-wide/16 v4, 0x20

    :try_start_2
    const-string/jumbo v0, "openSurfaceTransaction"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_2e

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteEventTrace;->openSurfaceTransaction()V

    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_28

    :try_start_20
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 11

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_34

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_2e

    move-result-object v2

    if-nez v2, :cond_1a

    :try_start_12
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_34

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v6, "from-client"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2e

    move-result v3

    :try_start_26
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_34

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overrideMiuiAnimSupportWinInset(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionInjector;->setMiuiAnimSupportInset(Landroid/graphics/Rect;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppTransition;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 17

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_18

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionLaunchFromHome(IIII)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionLaunchFromHome(IIII)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/WindowManagerService;->prolongAnimationsFromSpecs([Landroid/view/AppTransitionAnimationSpec;Z)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method pauseRotationLocked()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public performBootTimeout()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_23

    if-eqz v0, :cond_f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_23

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-wide v4, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowState;->pokeDrawLockLw(J)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_17

    :cond_12
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v5, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_41

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    :cond_41
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    iget-boolean v4, v3, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    if-nez v4, :cond_91

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    :cond_52
    :goto_52
    if-eqz v0, :cond_57

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    :cond_57
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_a4

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_6e
    :goto_6e
    if-eqz v1, :cond_8b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8b

    invoke-virtual {v1, v10}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_8b

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_8b
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void

    :cond_91
    if-eqz v0, :cond_52

    iput-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v4, v2, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_a4
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6e

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_6e
.end method

.method public prepareAppTransition(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    return-void
.end method

.method public prepareAppTransition(IZIZ)V
    .registers 10

    const-string/jumbo v2, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v3, "prepareAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_3a

    :cond_35
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3a
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 27

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/16 v18, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_102

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_106

    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v3, :cond_ac

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v12

    new-instance v2, Landroid/view/SurfaceControl;

    const-string/jumbo v4, "drag surface"

    const/4 v7, -0x3

    const/4 v8, 0x4

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    invoke-virtual {v12}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v0, p3

    and-int/lit16 v3, v0, 0x200

    if-nez v3, :cond_48

    const v9, 0x3f350481    # 0.7071f

    :cond_48
    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl;->setAlpha(F)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V
    :try_end_59
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_18 .. :try_end_59} :catch_b8
    .catchall {:try_start_18 .. :try_end_59} :catchall_106

    :try_start_59
    new-instance v3, Lcom/android/server/wm/DragState;

    move-object/from16 v4, p0

    move-object v6, v2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput v10, v3, Lcom/android/server/wm/DragState;->mPid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput v11, v3, Lcom/android/server/wm/DragState;->mUid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput v9, v3, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    new-instance v18, Landroid/os/Binder;

    invoke-direct/range {v18 .. v18}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_86
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_59 .. :try_end_86} :catch_10a
    .catchall {:try_start_59 .. :try_end_86} :catchall_f7

    :try_start_86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v15, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_a2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_86 .. :try_end_a2} :catch_b8
    .catchall {:try_start_86 .. :try_end_a2} :catchall_106

    move-object/from16 v5, v18

    :cond_a4
    :goto_a4
    :try_start_a4
    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_fd

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_ac
    :try_start_ac
    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "Drag already in progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_ac .. :try_end_b5} :catch_b8
    .catchall {:try_start_ac .. :try_end_b5} :catchall_106

    move-object/from16 v5, v18

    goto :goto_a4

    :catch_b8
    move-exception v14

    move-object/from16 v5, v18

    :goto_bb
    :try_start_bb
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " h="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v3, :cond_a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->reset()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_f6
    .catchall {:try_start_bb .. :try_end_f6} :catchall_f7

    goto :goto_a4

    :catchall_f7
    move-exception v3

    :goto_f8
    :try_start_f8
    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_fd

    :catchall_fd
    move-exception v3

    :goto_fe
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_102
    move-exception v3

    move-object/from16 v5, v18

    goto :goto_fe

    :catchall_106
    move-exception v3

    move-object/from16 v5, v18

    goto :goto_f8

    :catch_10a
    move-exception v14

    goto :goto_bb
.end method

.method public prepareMultiWindowTransition(I)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowAnimationLocked(I)Lcom/android/server/wm/MultiWindowAnimation;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/android/server/wm/MultiWindowAnimation;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v3, v1, v5, p0}, Lcom/android/server/wm/MultiWindowAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowAnimator;->setMultiWindowAnimationLocked(ILcom/android/server/wm/MultiWindowAnimation;)V

    :cond_28
    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowAnimation;->setTransition(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_33

    :cond_2e
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method prolongAnimationsFromSpecs([Landroid/view/AppTransitionAnimationSpec;Z)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpTaskIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    array-length v5, p1

    add-int/lit8 v1, v5, -0x1

    :goto_a
    if-ltz v1, :cond_18

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpTaskIds:Landroid/util/SparseIntArray;

    aget-object v6, p1, v1

    iget v6, v6, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_18
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTmpTaskIds:Landroid/util/SparseIntArray;

    iget v6, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v7, :cond_22

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_22

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v5, :cond_22

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz p2, :cond_55

    const/4 v5, 0x2

    :goto_51
    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppWindowAnimator;->startProlongAnimation(I)V

    goto :goto_22

    :cond_55
    const/4 v5, 0x1

    goto :goto_51

    :cond_57
    return-void
.end method

.method public reboot(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public rebootSafeMode(Z)V
    .registers 3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    return-void
.end method

.method reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_49

    move v3, v4

    :goto_2c
    or-int/2addr v0, v3

    if-eqz v0, :cond_43

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p0, v5, v5, v5, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void

    :cond_49
    move v3, v5

    goto :goto_2c
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    :cond_19
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 4

    const-string/jumbo v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerDockedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_21

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public registerMiuiGestureControlHelper(Lcom/miui/internal/transition/IMiuiGestureControlHelper;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->registerMiuiGestureControlHelper(Lcom/miui/internal/transition/IMiuiGestureControlHelper;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    .registers 6

    const-string/jumbo v1, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v2, "registerPinnedStackListener()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v1, :cond_12

    return-void

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/PinnedStackController;->registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_2a

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerShortcutKey"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    return-void
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_28

    move-result v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I
    .registers 51

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "android.permission.STATUS_BAR"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_37

    const/4 v14, 0x1

    :goto_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_d0

    move-result-object v26

    if-nez v26, :cond_39

    const/16 v28, 0x0

    monitor-exit v29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v28

    :cond_37
    const/4 v14, 0x0

    goto :goto_12

    :cond_39
    :try_start_39
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v31

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerServiceInjector;->adjustWindowParams(Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, p7

    move/from16 v1, v28

    if-eq v0, v1, :cond_6d

    move-object/from16 v0, v26

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->setRequestedSize(II)V

    :cond_6d
    const/4 v6, 0x0

    const/4 v12, 0x0

    if-eqz p4, :cond_1b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v28, v0

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_ab

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v30, v0

    or-int v22, v28, v30

    const/high16 v28, 0x3ff0000

    and-int v28, v28, v22

    if-eqz v28, :cond_a5

    if-nez v14, :cond_a5

    const v28, -0x3ff0001

    and-int v22, v22, v28

    :cond_a5
    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_ab
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_d6

    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Window type can not be changed after the window is added."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_d0
    .catchall {:try_start_39 .. :try_end_d0} :catchall_d0

    :catchall_d0
    move-exception v28

    monitor-exit v29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v28

    :cond_d6
    :try_start_d6
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x2000

    move/from16 v28, v0

    if-eqz v28, :cond_12c

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_12c
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    xor-int v12, v30, v31

    move-object/from16 v0, v28

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    and-int/lit16 v0, v6, 0x4001

    move/from16 v28, v0

    if-eqz v28, :cond_160

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    :cond_160
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17d

    const/high16 v28, 0x80000

    and-int v28, v28, v12

    if-nez v28, :cond_174

    const/high16 v28, 0x400000

    and-int v28, v28, v12

    if-eqz v28, :cond_17d

    :cond_174
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    :cond_17d
    const/high16 v28, 0x2000000

    and-int v28, v28, v6

    if-eqz v28, :cond_19a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v28, v0

    if-eqz v28, :cond_19a

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v28

    if-nez v28, :cond_19a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_19a
    const/high16 v28, 0x80000

    and-int v28, v28, v12

    if-eqz v28, :cond_1b3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    :cond_1b3
    and-int/lit8 v28, p8, 0x2

    if-eqz v28, :cond_51f

    const/16 v28, 0x1

    :goto_1b9
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_523

    const/16 v28, 0x1

    :goto_1d5
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    and-int/lit16 v0, v6, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_1ed

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    :cond_1ed
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-nez v28, :cond_22a

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    if-eqz v28, :cond_527

    :cond_22a
    :goto_22a
    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    :cond_22f
    const v28, 0x20008

    and-int v28, v28, v12

    if-eqz v28, :cond_551

    const/4 v15, 0x1

    :goto_237
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v16

    if-eqz v16, :cond_55e

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p7

    if-ne v0, v1, :cond_24d

    and-int/lit8 v28, v12, 0x8

    if-eqz v28, :cond_554

    :cond_24d
    const/4 v13, 0x1

    :goto_24e
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p7

    if-eq v0, v1, :cond_565

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v28, v0

    const/high16 v30, 0x100000

    and-int v28, v28, v30

    if-eqz v28, :cond_561

    const/16 v25, 0x1

    :goto_26e
    const/high16 v28, 0x100000

    and-int v28, v28, v12

    if-eqz v28, :cond_569

    const/16 v28, 0x1

    :goto_276
    or-int v25, v25, v28

    and-int/lit16 v0, v12, 0x2000

    move/from16 v28, v0

    if-eqz v28, :cond_29b

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29b

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    :cond_29b
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v17, v0

    move/from16 v0, p7

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez p7, :cond_57b

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2d5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x3

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_56d

    :cond_2d5
    const/16 v21, 0x1

    :goto_2d7
    if-eqz v21, :cond_5d7

    const-string/jumbo v28, "relayoutWindow: viewVisibility_1"

    const-wide/16 v30, 0x20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    move/from16 v28, v0

    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_305

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    :cond_305
    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wm/WindowState;->relayoutVisibleWindow(III)I
    :try_end_30e
    .catchall {:try_start_d6 .. :try_end_30e} :catchall_d0

    move-result v20

    :try_start_30f
    move-object/from16 v0, p0

    move-object/from16 v1, p17

    move/from16 v2, v20

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    :try_end_31c
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_31c} :catch_57f
    .catchall {:try_start_30f .. :try_end_31c} :catchall_d0

    move-result v20

    and-int/lit8 v28, v20, 0x2

    if-eqz v28, :cond_323

    move/from16 v13, v16

    :cond_323
    :try_start_323
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x7db

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_347

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    if-nez v28, :cond_347

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v15, 0x1

    :cond_347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->adjustStartingWindowFlags()V

    const-wide/16 v30, 0x20

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    :goto_34f
    if-eqz v13, :cond_362

    const/16 v28, 0x3

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v28

    if-eqz v28, :cond_362

    const/4 v15, 0x0

    :cond_362
    and-int/lit8 v28, v20, 0x2

    if-eqz v28, :cond_692

    const/16 v23, 0x1

    :goto_368
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-eqz v15, :cond_37e

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    if-eqz v23, :cond_37e

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_37e
    if-eqz v25, :cond_392

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v30, v0

    or-int/lit8 v30, v30, 0x4

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_392
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V

    :cond_3ad
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    and-int/lit8 v28, p8, 0x1

    if-eqz v28, :cond_696

    const/16 v28, 0x1

    :goto_3b6
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    const-string/jumbo v28, "relayoutWindow: updateOrientationFromAppTokens"

    const-wide/16 v30, 0x20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v7

    const-wide/16 v30, 0x20

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    if-eqz v23, :cond_413

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v28, v0

    if-eqz v28, :cond_413

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v28, v0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v30, v0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_413
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    if-eqz v28, :cond_424

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_424
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    move/from16 v28, v0

    if-eqz v28, :cond_436

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    or-int/lit8 v20, v20, 0x20

    :cond_436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v28

    if-eqz v28, :cond_448

    or-int/lit8 v20, v20, 0x40

    :cond_448
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v28

    if-nez v28, :cond_456

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    :cond_456
    if-eqz v21, :cond_69a

    move-object/from16 v0, v26

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V

    :goto_45f
    move-object/from16 v0, v26

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, p15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6a3

    const/16 v28, 0x1

    :goto_4e6
    or-int v20, v20, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mInRelayout:Z
    :try_end_4ff
    .catchall {:try_start_323 .. :try_end_4ff} :catchall_d0

    monitor-exit v29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v7, :cond_51b

    const-string/jumbo v28, "relayoutWindow: sendNewConfiguration"

    const-wide/16 v30, 0x20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    const-wide/16 v28, 0x20

    invoke-static/range {v28 .. v29}, Landroid/os/Trace;->traceEnd(J)V

    :cond_51b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v20

    :cond_51f
    const/16 v28, 0x0

    goto/16 :goto_1b9

    :cond_523
    const/16 v28, 0x0

    goto/16 :goto_1d5

    :cond_527
    :try_start_527
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    if-nez v28, :cond_22a

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    if-eqz v28, :cond_22f

    goto/16 :goto_22a

    :cond_551
    const/4 v15, 0x0

    goto/16 :goto_237

    :cond_554
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v28, v0

    xor-int/lit8 v13, v28, 0x1

    goto/16 :goto_24e

    :cond_55e
    const/4 v13, 0x0

    goto/16 :goto_24e

    :cond_561
    const/16 v25, 0x0

    goto/16 :goto_26e

    :cond_565
    const/16 v25, 0x0

    goto/16 :goto_26e

    :cond_569
    const/16 v28, 0x0

    goto/16 :goto_276

    :cond_56d
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v28

    xor-int/lit8 v21, v28, 0x1

    goto/16 :goto_2d7

    :cond_57b
    const/16 v21, 0x0

    goto/16 :goto_2d7

    :catch_57f
    move-exception v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const-string/jumbo v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Exception thrown when creating surface for client "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5d0
    .catchall {:try_start_527 .. :try_end_5d0} :catchall_d0

    const/16 v28, 0x0

    monitor-exit v29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v28

    :cond_5d7
    :try_start_5d7
    const-string/jumbo v28, "relayoutWindow: viewVisibility_2"

    const-wide/16 v30, 0x20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v17, :cond_650

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v24

    :goto_5f9
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v28

    if-eqz v28, :cond_623

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    move/from16 v28, v0

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_623

    xor-int/lit8 v28, v24, 0x1

    if-eqz v28, :cond_623

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    move/from16 v28, v0

    if-nez v28, :cond_621

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/wm/WindowManagerService;->tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z

    move-result v13

    :cond_621
    const/16 v20, 0x4

    :cond_623
    if-nez p7, :cond_653

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v28

    if-eqz v28, :cond_653

    const-string/jumbo v28, "relayoutWindow: getSurface"

    const-wide/16 v30, 0x20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    const-wide/16 v30, 0x20

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    :goto_649
    const-wide/16 v30, 0x20

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_64e
    .catchall {:try_start_5d7 .. :try_end_64e} :catchall_d0

    goto/16 :goto_34f

    :cond_650
    const/16 v24, 0x0

    goto :goto_5f9

    :cond_653
    :try_start_653
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "wmReleaseOutSurface_"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v30, 0x20

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p17 .. p17}, Landroid/view/Surface;->release()V
    :try_end_685
    .catchall {:try_start_653 .. :try_end_685} :catchall_68b

    const-wide/16 v30, 0x20

    :try_start_687
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_649

    :catchall_68b
    move-exception v28

    const-wide/16 v30, 0x20

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    throw v28

    :cond_692
    const/16 v23, 0x0

    goto/16 :goto_368

    :cond_696
    const/16 v28, 0x0

    goto/16 :goto_3b6

    :cond_69a
    move-object/from16 v0, v26

    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    :try_end_6a1
    .catchall {:try_start_687 .. :try_end_6a1} :catchall_d0

    goto/16 :goto_45f

    :cond_6a3
    const/16 v28, 0x0

    goto/16 :goto_4e6
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .registers 10

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    :goto_b
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3e

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget-object v5, v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v5, v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v7, 0x0

    invoke-interface {v0, v5, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_43

    :cond_39
    add-int/lit8 v1, v1, -0x1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3e
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_43
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    move-result-object v0

    if-nez v0, :cond_12

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_12
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .registers 11

    const-string/jumbo v4, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v5, "removeWindowToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_19
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_90

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_54

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for non-exiting displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_8a

    :try_start_4c
    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_90

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_54
    :try_start_54
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-nez v1, :cond_7c

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_8a

    :try_start_74
    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_90

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7c
    :try_start_7c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_8a

    :try_start_82
    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_90

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8a
    move-exception v4

    :try_start_8b
    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1, p2}, Landroid/view/IWindow;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    .registers 5

    const-string/jumbo v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "requestAssistScreenshot()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method requestTraversal()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_24

    :try_start_b
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v3

    invoke-virtual {v1, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "unable to restore pointer icon"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_24
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_18
.end method

.method resumeRotationLocked()V
    .registers 6

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v2, :cond_2c

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    return-void
.end method

.method rotationNeedsUpdateLocked()Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v2, v4}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v2, v5}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    xor-int/lit8 v0, v6, 0x1

    if-ne v4, v5, :cond_24

    if-ne v3, v0, :cond_24

    const/4 v6, 0x0

    return v6

    :cond_24
    const/4 v6, 0x1

    return v6
.end method

.method saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 11

    const/16 v6, 0x26

    const/4 v5, 0x0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4f
    if-eqz p2, :cond_6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6e
    if-eqz p3, :cond_87

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_87
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Windows added since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a8
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Windows removed since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c9
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Last ANR continued"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method scheduleAnimationLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    return-void
.end method

.method public scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to reset replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_3b

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2d
    if-eqz p2, :cond_37

    :try_start_2f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    :goto_32
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearWillReplaceWindows()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_32

    :catchall_3b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6

    const/16 v1, 0x2e

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .registers 13

    const-wide/16 v10, 0x20

    const-string/jumbo v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "screenshotWallpaper()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :try_start_17
    const-string/jumbo v0, "screenshotWallpaper"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_33

    move-result-object v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_33
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method sendNewConfiguration(I)V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Landroid/app/IActivityManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_36

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const-string/jumbo v3, "config-unchanged"

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_26
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_30

    :cond_2b
    :try_start_2b
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_2f
    :goto_2f
    return-void

    :catchall_30
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_36

    :catch_36
    move-exception v2

    goto :goto_2f
.end method

.method public setAnimationScale(IF)V
    .registers 5

    const-string/jumbo v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    packed-switch p1, :pswitch_data_2e

    :goto_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void

    :pswitch_24
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    goto :goto_1c

    :pswitch_27
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_1c

    :pswitch_2a
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_1c

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz p1, :cond_40

    array-length v0, p1

    if-lt v0, v2, :cond_26

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    :cond_26
    array-length v0, p1

    if-lt v0, v3, :cond_31

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    :cond_31
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_40

    aget v0, p1, v3

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowToken;->setFillsParent(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    :cond_19
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentProfileIds([I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setCurrentUser(I[I)V
    .registers 11

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, p1}, Landroid/view/WindowManagerPolicy;->setCurrentUserLw(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->switchUser()V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    if-eqz v2, :cond_35

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->hasTaskForUser(I)Z

    move-result v4

    :cond_35
    invoke-virtual {v6, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_46

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v1

    if-eqz v1, :cond_4b

    move v3, v1

    :goto_43
    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_4e

    :cond_46
    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4b
    :try_start_4b
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_4e

    goto :goto_43

    :catchall_4e
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public setDockedStackCreateState(ILandroid/graphics/Rect;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->setTouchRegion(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setDockedStackResizing(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setEventDispatching(Z)V
    .registers 4

    const-string/jumbo v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2b

    :cond_26
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_b
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :goto_11
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_17
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    :goto_1d
    if-eqz v2, :cond_24

    if-eq v2, v0, :cond_24

    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    :cond_24
    if-eqz v0, :cond_29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    :cond_29
    return-void

    :cond_2a
    const/4 v1, 0x0

    goto :goto_b

    :cond_2c
    const/4 v3, 0x0

    goto :goto_11

    :cond_2e
    const/4 v0, 0x0

    goto :goto_17

    :cond_30
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 13

    const-string/jumbo v6, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_15
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_55

    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v6, v1, :cond_7e

    const/4 v0, 0x1

    :goto_23
    if-eqz v0, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_38

    const v6, 0x7fffffff

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v1, v8}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    :cond_38
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    :cond_40
    if-eqz p2, :cond_50

    if-eqz v0, :cond_50

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_78

    :cond_50
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_55
    :try_start_55
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1e

    const-string/jumbo v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_78

    goto :goto_1e

    :catchall_78
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_7e
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public setForceResizableTasks(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setForcedDisplayDensityForUser(III)V
    .registers 15

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz p1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "setForcedDisplayDensityForUser"

    const/4 v4, 0x1

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_36
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_69

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-eqz v7, :cond_4b

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v0, v10, :cond_4b

    invoke-direct {p0, v7, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "display_density_forced"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_63

    :try_start_5b
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_69

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setForcedDisplayScalingMode(II)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    if-eqz p1, :cond_1f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Can only set the default display"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_23
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_54

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_46

    if-ltz p2, :cond_36

    const/4 v1, 0x1

    if-le p2, v1, :cond_37

    :cond_36
    const/4 p2, 0x0

    :cond_37
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "display_scaling_force"

    invoke-static {v1, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_4e

    :cond_46
    :try_start_46
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_54

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setForcedDisplaySize(III)V
    .registers 15

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_14
    if-eqz p1, :cond_1f

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Can only set the default display"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_23
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_87

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v2, 0xc8

    const/16 v1, 0xc8

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_79

    const/16 v6, 0xc8

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v6, 0xc8

    invoke-static {p3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "display_size_forced"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_79
    .catchall {:try_start_26 .. :try_end_79} :catchall_81

    :cond_79
    :try_start_79
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_87

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_81
    move-exception v6

    :try_start_82
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setHallFlag(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/wm/WindowManagerService;->mHallFlag:Z

    return-void
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_35

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v2, p1, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget v4, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_16
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v0, v1, :cond_34

    if-eqz v0, :cond_37

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->keepScreenOnStartedLw()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_4

    :cond_37
    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_34
.end method

.method public setInTouchMode(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_8
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_58

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_4a

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_42

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    :cond_42
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_52

    :cond_4a
    :try_start_4a
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_58

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setIsInMultiWindowMode(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsInMultiWindowMode:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setKeyguardGoingAway(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setLoadBackHomeAnimation(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->setLoadBackHomeAnimation(Z)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/AppTransition;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->clearNextAppTransitionBackHomeType()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2b

    :cond_26
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I
    .registers 5

    const-string/jumbo v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setNewDisplayOverrideConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const-string/jumbo v0, "new-config"

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_32

    move-result-object v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_32
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setOverscan(IIIII)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_18
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v8
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3c

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_36

    :cond_2e
    :try_start_2e
    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_3c

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setPipVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setPipVisibilityLw(Z)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method public setRecentsItemCoordinates(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wm/MiuiGestureController;->setRecentsItemCoordinates(IIII)V

    return-void
.end method

.method public setRecentsVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setRecentsVisibilityLw(Z)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method setRecentsWindowState(Lcom/android/server/wm/WindowState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->setRecentsWindowState(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public setResizeDimLayer(ZIF)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setScreenCaptureDisabled(IZ)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only system can call setScreenCaptureDisabled."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mScreenCaptureDisabled:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setSecureSurfaceState(IZ)V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2a

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSupportsPictureInPicture(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setSwitchingUser(Z)V
    .registers 4

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "setSwitchingUser()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setSwitchingUser(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_27

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setTestFlag(Z)V
    .registers 4

    if-eqz p1, :cond_e

    const-string/jumbo v0, "zhoumingliang-windowmanager"

    const-string/jumbo v1, "set vrtest flag -- true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    sput-boolean p1, Lcom/android/server/wm/WindowManagerService;->mTestFlag:Z

    return-void

    :cond_e
    const-string/jumbo v0, "zhoumingliang-windowmanager"

    const-string/jumbo v1, "set vrtest flag -- false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_28

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_1a

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_22

    :cond_1a
    :try_start_1a
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_28

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setWillReplaceWindow(Landroid/os/IBinder;Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_35

    :cond_16
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_3d

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_35
    :try_start_35
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3d

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3d
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_35

    :cond_16
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_48

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_35
    if-eqz p2, :cond_43

    :try_start_37
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceChildWindows()V

    :goto_3a
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_48

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_43
    const/4 v1, 0x0

    :try_start_44
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_3a

    :catchall_48
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowOpaque(Landroid/os/IBinder;Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_37

    if-nez v1, :cond_10

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_10
    :try_start_10
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_37

    if-nez v1, :cond_1c

    if-nez p2, :cond_1b

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1b
    const/4 v0, 0x1

    :cond_1c
    :try_start_1c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_37

    if-eqz v1, :cond_25

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_25
    const/4 v1, 0x1

    :try_start_26
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_37

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    :cond_36
    return-void

    :catchall_37
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showCircularMask(Z)V
    .registers 10

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_67

    if-eqz p1, :cond_54

    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v0, Lcom/android/server/wm/CircularDisplayMask;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v7, 0x7e2

    invoke-interface {v3, v7}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    add-int/lit8 v3, v3, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/CircularDisplayMask;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;III)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_62

    :cond_4c
    :goto_4c
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_67

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_62

    goto :goto_4c

    :catchall_62
    move-exception v0

    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public showEmulatorDisplayOverlay()V
    .registers 8

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3f

    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v6, 0x7e2

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->setVisibility(Z)V
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public showEmulatorDisplayOverlayIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "ro.emulator.circular"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_2a
    return-void
.end method

.method showGlobalActions()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showGlobalActions()V

    return-void
.end method

.method public showRecentApps(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->showRecentApps(Z)V

    return-void
.end method

.method public showStrictModeViolation(Z)V
    .registers 8

    const/4 v5, 0x0

    const/16 v4, 0x19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_22
    return-void

    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_22
.end method

.method public shutdown(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public startFetchingAppTransitionSpecs()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x64

    const/16 v4, 0x66

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_20

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method startFreezingDisplayLocked(ZII)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V
    .registers 13

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1e

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v4, v4}, Landroid/view/WindowManagerPolicy;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->freeze()V

    :cond_4c
    iget-boolean v1, p4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_81

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    :cond_61
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v6

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isDefaultOrientationForced()Z

    move-result v5

    move-object v2, p4

    move v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZLcom/android/server/wm/WindowManagerService;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    :cond_81
    return-void
.end method

.method public startFreezingScreen(II)V
    .registers 10

    const-string/jumbo v2, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v3, "startFreezingScreen()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires FREEZE_SCREEN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_47

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_27
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZII)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    const/16 v6, 0x1e

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_42

    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_47

    :cond_3d
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_42
    move-exception v2

    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 13

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2f

    move-result v0

    if-nez v0, :cond_1e

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    :cond_1e
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_35

    :goto_2d
    const/4 v0, 0x1

    return v0

    :catchall_2f
    move-exception v0

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catch_35
    move-exception v6

    goto :goto_2d
.end method

.method public startViewServer(I)Z
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    return v3

    :cond_8
    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    :cond_15
    const/16 v1, 0x400

    if-ge p1, v1, :cond_1a

    return v3

    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_37

    :try_start_26
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2d

    move-result v1

    return v1

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "View server did not start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v3

    :cond_38
    :try_start_38
    new-instance v1, Lcom/android/server/wm/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_46

    move-result v1

    return v1

    :catch_46
    move-exception v0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "View server did not start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public statusBarVisibilityChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2a

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method stopFreezingDisplayLocked()V
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-lez v3, :cond_14

    :cond_13
    return-void

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Screen frozen for "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v4, v3

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v3, :cond_87

    const-string/jumbo v3, " due to "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_87
    const-string/jumbo v3, "WindowManager"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v13}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_14b

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-interface {v3, v4, v5, v15}, Landroid/view/WindowManagerPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v3

    if-nez v3, :cond_d9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    :cond_d9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v4, 0x2710

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    iget v7, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFIIII)Z

    move-result v3

    if-eqz v3, :cond_13d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :goto_f8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x7d0

    const/16 v6, 0xf

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v17, :cond_129

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v3

    or-int/2addr v11, v3

    :cond_129
    if-eqz v11, :cond_13c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_13c
    return-void

    :cond_13d
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    const/16 v17, 0x1

    goto :goto_f8

    :cond_14b
    if-eqz v2, :cond_158

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    :cond_158
    const/16 v17, 0x1

    goto :goto_f8
.end method

.method public stopFreezingScreen()V
    .registers 5

    const-string/jumbo v2, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v3, "stopFreezingScreen()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires FREEZE_SCREEN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    const-string/jumbo v2, "client"

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3b

    move-result-wide v0

    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    :try_start_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3b

    :cond_31
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception v2

    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method stopUsingSavedSurfaceLocked()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->stopUsingSavedSurfaceLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public stopViewServer()Z
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    const-string/jumbo v0, "android.permission.DUMP"

    const-string/jumbo v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    return v0

    :cond_20
    return v2
.end method

.method public switchInputMethod(Z)V
    .registers 4

    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodManagerInternal;->switchInputMethod(Z)V

    :cond_d
    return-void
.end method

.method public systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryWideColorGamutSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initMiuiGestureController()V

    return-void
.end method

.method public thawRotation()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v2, "android.permission.SET_ORIENTATION"

    const-string/jumbo v3, "thawRotation()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires SET_ORIENTATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x0

    const/16 v4, 0x309

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_29

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMiuiGestureControlHelper()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, v2, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MiuiGestureController;->unregisterMiuiGestureControlHelper(Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    return-void
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 15

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v8, v3, :cond_b6

    const-string/jumbo v8, "wmUpdateFocus"

    const-wide/16 v10, 0x20

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_4b

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v7, v4, :cond_aa

    const/4 v2, 0x1

    :goto_31
    const/4 v8, 0x1

    if-eq p1, v8, :cond_4b

    const/4 v8, 0x3

    if-eq p1, v8, :cond_4b

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v6, v8, :cond_ac

    const/4 v8, 0x1

    :goto_4a
    or-int/2addr v2, v8

    :cond_4b
    if-eqz v2, :cond_59

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    :cond_59
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_70

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_70
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8, v5, v3}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v1

    if-eqz v2, :cond_85

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v8, :cond_85

    const/4 v8, 0x2

    if-ne p1, v8, :cond_ae

    const/4 v8, 0x1

    invoke-virtual {v0, v8, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    and-int/lit8 v1, v1, -0x2

    :cond_85
    :goto_85
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_93

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const/4 v8, 0x2

    if-ne p1, v8, :cond_93

    const/4 v8, 0x1

    invoke-virtual {v0, v8, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    :cond_93
    const/4 v8, 0x1

    if-eq p1, v8, :cond_9d

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8, v9, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    :cond_9d
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v8, 0x1

    return v8

    :cond_aa
    const/4 v2, 0x0

    goto :goto_31

    :cond_ac
    const/4 v8, 0x0

    goto :goto_4a

    :cond_ae
    const/4 v8, 0x3

    if-ne p1, v8, :cond_85

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_85

    :cond_b6
    const/4 v8, 0x0

    return v8
.end method

.method updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    if-eqz p2, :cond_33

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    if-ne v1, v0, :cond_39

    return-void

    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_39
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$Lambda$eBBEuGZ8VbEXJy0r5EYYbvnl-8w;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$Lambda$eBBEuGZ8VbEXJy0r5EYYbvnl-8w;-><init>(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .registers 9

    const-string/jumbo v1, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_31

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_2b

    move-result-object v0

    :try_start_23
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_31

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method updateOrientationFromAppTokensLocked(ZI)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v4

    if-eq v1, v4, :cond_2b

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setLastOrientation(I)V

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v1}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    :cond_20
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_30

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2b
    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_30
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updatePointerIcon(Landroid/view/IWindow;)V
    .registers 12

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v6}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->-get0(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v6

    if-nez v6, :cond_d

    monitor-exit v7

    return-void

    :cond_d
    :try_start_d
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v6}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->-get1(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v6}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->-get2(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_29

    move-result v4

    monitor-exit v7

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_86

    if-eqz v6, :cond_2c

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2c
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_2e
    invoke-virtual {p0, v6, p1, v8}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_53

    const-string/jumbo v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad requesting window "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_86

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_53
    :try_start_53
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_86

    move-result-object v1

    if-nez v1, :cond_5e

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5e
    :try_start_5e
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_86

    move-result-object v5

    if-eq v5, v0, :cond_69

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_69
    :try_start_69
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v8

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_76} :catch_7b
    .catchall {:try_start_69 .. :try_end_76} :catchall_86

    :goto_76
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catch_7b
    move-exception v2

    :try_start_7c
    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v8, "unable to update pointer icon"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_86

    goto :goto_76

    :catchall_86
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6
.end method

.method public updateRotation(ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void
.end method

.method updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 9

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_19

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_11

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    :cond_11
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZZ)Z

    :cond_19
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    return v7

    :cond_8
    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_4b
    .catchall {:try_start_e .. :try_end_1e} :catchall_56

    if-eqz v3, :cond_39

    :try_start_20
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_39
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_63
    .catchall {:try_start_20 .. :try_end_41} :catchall_60

    if-eqz v5, :cond_46

    :try_start_43
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_48

    :cond_46
    :goto_46
    move-object v4, v5

    :cond_47
    :goto_47
    return v6

    :catch_48
    move-exception v1

    const/4 v6, 0x0

    goto :goto_46

    :catch_4b
    move-exception v2

    :goto_4c
    const/4 v6, 0x0

    if-eqz v4, :cond_47

    :try_start_4f
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_47

    :catch_53
    move-exception v1

    const/4 v6, 0x0

    goto :goto_47

    :catchall_56
    move-exception v7

    :goto_57
    if-eqz v4, :cond_5c

    :try_start_59
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    throw v7

    :catch_5d
    move-exception v1

    const/4 v6, 0x0

    goto :goto_5c

    :catchall_60
    move-exception v7

    move-object v4, v5

    goto :goto_57

    :catch_63
    move-exception v2

    move-object v4, v5

    goto :goto_4c
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 16

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v10

    if-eqz v10, :cond_8

    return v11

    :cond_8
    const/4 v7, 0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v11

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v12, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v13, 0x19

    invoke-direct {v12, v13, v9}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_64

    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v5, 0x0

    :try_start_26
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v11, 0x2000

    invoke-direct {v6, v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_7d
    .catchall {:try_start_26 .. :try_end_36} :catchall_88

    :try_start_36
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v1, :cond_6a

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_61} :catch_95
    .catchall {:try_start_36 .. :try_end_61} :catchall_92

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :catchall_64
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_6a
    :try_start_6a
    const-string/jumbo v10, "DONE.\n"

    invoke-virtual {v6, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_95
    .catchall {:try_start_6a .. :try_end_73} :catchall_92

    if-eqz v6, :cond_78

    :try_start_75
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7a

    :cond_78
    :goto_78
    move-object v5, v6

    :cond_79
    :goto_79
    return v7

    :catch_7a
    move-exception v2

    const/4 v7, 0x0

    goto :goto_78

    :catch_7d
    move-exception v3

    :goto_7e
    const/4 v7, 0x0

    if-eqz v5, :cond_79

    :try_start_81
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_79

    :catch_85
    move-exception v2

    const/4 v7, 0x0

    goto :goto_79

    :catchall_88
    move-exception v10

    :goto_89
    if-eqz v5, :cond_8e

    :try_start_8b
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    :cond_8e
    :goto_8e
    throw v10

    :catch_8f
    move-exception v2

    const/4 v7, 0x0

    goto :goto_8e

    :catchall_92
    move-exception v10

    move-object v5, v6

    goto :goto_89

    :catch_95
    move-exception v3

    move-object v5, v6

    goto :goto_7e
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    return v14

    :cond_8
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v14, 0x20

    :try_start_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v14, -0x1

    if-ne v8, v14, :cond_1b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    :cond_1b
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0x10

    invoke-static {v3, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    long-to-int v7, v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_41

    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_37
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v13

    if-nez v13, :cond_45

    const/4 v14, 0x0

    return v14

    :cond_41
    const-string/jumbo p3, ""

    goto :goto_37

    :cond_45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string/jumbo v14, "android.view.IWindow"

    invoke-virtual {v4, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v14}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v2, v14, v4, v11, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v14

    if-nez v14, :cond_95

    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_8b} :catch_a7
    .catchall {:try_start_e .. :try_end_8b} :catchall_e4

    :try_start_8b
    const-string/jumbo v14, "DONE\n"

    invoke-virtual {v10, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_94} :catch_fa
    .catchall {:try_start_8b .. :try_end_94} :catchall_f7

    move-object v9, v10

    :cond_95
    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_9a
    if-eqz v11, :cond_9f

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    :cond_9f
    if-eqz v9, :cond_a4

    :try_start_a1
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    :cond_a4
    :goto_a4
    return v12

    :catch_a5
    move-exception v5

    goto :goto_a4

    :catch_a7
    move-exception v6

    :goto_a8
    :try_start_a8
    const-string/jumbo v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not send command "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " with parameters "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_a8 .. :try_end_d1} :catchall_e4

    const/4 v12, 0x0

    if-eqz v4, :cond_d7

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_d7
    if-eqz v11, :cond_dc

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    :cond_dc
    if-eqz v9, :cond_a4

    :try_start_de
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_a4

    :catch_e2
    move-exception v5

    goto :goto_a4

    :catchall_e4
    move-exception v14

    :goto_e5
    if-eqz v4, :cond_ea

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_ea
    if-eqz v11, :cond_ef

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    :cond_ef
    if-eqz v9, :cond_f4

    :try_start_f1
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5

    :cond_f4
    :goto_f4
    throw v14

    :catch_f5
    move-exception v5

    goto :goto_f4

    :catchall_f7
    move-exception v14

    move-object v9, v10

    goto :goto_e5

    :catch_fa
    move-exception v6

    move-object v9, v10

    goto :goto_a8
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .registers 9

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, Lcom/android/server/wm/WindowManagerService$8;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowManagerService$8;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2a

    :try_start_f
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/android/server/wm/WindowManagerService$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_30
    .catchall {:try_start_f .. :try_end_21} :catchall_2a

    :goto_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    move-result v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_2a
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :catch_30
    move-exception v1

    goto :goto_21
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 10

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_4e

    if-eqz p3, :cond_2f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed looking up window callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4e
    if-eqz p1, :cond_a7

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_a7

    if-eqz p3, :cond_88

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_88
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed looking up window callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a7
    return-object v0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
