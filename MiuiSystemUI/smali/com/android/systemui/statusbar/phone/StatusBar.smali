.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$10;,
        Lcom/android/systemui/statusbar/phone/StatusBar$11;,
        Lcom/android/systemui/statusbar/phone/StatusBar$12;,
        Lcom/android/systemui/statusbar/phone/StatusBar$13;,
        Lcom/android/systemui/statusbar/phone/StatusBar$14;,
        Lcom/android/systemui/statusbar/phone/StatusBar$15;,
        Lcom/android/systemui/statusbar/phone/StatusBar$16;,
        Lcom/android/systemui/statusbar/phone/StatusBar$17;,
        Lcom/android/systemui/statusbar/phone/StatusBar$18;,
        Lcom/android/systemui/statusbar/phone/StatusBar$19;,
        Lcom/android/systemui/statusbar/phone/StatusBar$1;,
        Lcom/android/systemui/statusbar/phone/StatusBar$20;,
        Lcom/android/systemui/statusbar/phone/StatusBar$21;,
        Lcom/android/systemui/statusbar/phone/StatusBar$22;,
        Lcom/android/systemui/statusbar/phone/StatusBar$23;,
        Lcom/android/systemui/statusbar/phone/StatusBar$24;,
        Lcom/android/systemui/statusbar/phone/StatusBar$25;,
        Lcom/android/systemui/statusbar/phone/StatusBar$26;,
        Lcom/android/systemui/statusbar/phone/StatusBar$27;,
        Lcom/android/systemui/statusbar/phone/StatusBar$28;,
        Lcom/android/systemui/statusbar/phone/StatusBar$29;,
        Lcom/android/systemui/statusbar/phone/StatusBar$2;,
        Lcom/android/systemui/statusbar/phone/StatusBar$30;,
        Lcom/android/systemui/statusbar/phone/StatusBar$31;,
        Lcom/android/systemui/statusbar/phone/StatusBar$32;,
        Lcom/android/systemui/statusbar/phone/StatusBar$33;,
        Lcom/android/systemui/statusbar/phone/StatusBar$34;,
        Lcom/android/systemui/statusbar/phone/StatusBar$35;,
        Lcom/android/systemui/statusbar/phone/StatusBar$36;,
        Lcom/android/systemui/statusbar/phone/StatusBar$37;,
        Lcom/android/systemui/statusbar/phone/StatusBar$38;,
        Lcom/android/systemui/statusbar/phone/StatusBar$3;,
        Lcom/android/systemui/statusbar/phone/StatusBar$4;,
        Lcom/android/systemui/statusbar/phone/StatusBar$5;,
        Lcom/android/systemui/statusbar/phone/StatusBar$6;,
        Lcom/android/systemui/statusbar/phone/StatusBar$7;,
        Lcom/android/systemui/statusbar/phone/StatusBar$8;,
        Lcom/android/systemui/statusbar/phone/StatusBar$9;,
        Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;,
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/StatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/StatusBar$H;,
        Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/phone/StatusBar$W;
    }
.end annotation


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field public static final CHATTY:Z

.field public static final DEBUG:Z

.field public static final DEBUG_GESTURES:Z

.field public static final DEBUG_MEDIA:Z

.field public static final DEBUG_MEDIA_FAKE_ARTWORK:Z

.field public static final DEBUG_WINDOW_STATE:Z

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

.field public static final ENABLE_REMOTE_INPUT:Z

.field private static EXTRA_APP_UID:Ljava/lang/String;

.field private static EXTRA_HIGH_PRIORITY_SETTING:Ljava/lang/String;

.field public static final FORCE_REMOTE_INPUT_HISTORY:Z

.field private static final FREEFORM_WINDOW_MANAGEMENT:Z

.field private static final ONLY_CORE_APPS:Z

.field public static final SPEW:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static sBootCompleted:Z

.field public static sGameMode:Z

.field public static sIsStatusBarHidden:Z


# instance fields
.field private final TYPE_FROM_STATUS_BAR_EXPANSION:Ljava/lang/String;

.field mAbsPos:[I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mActivityManager:Landroid/app/ActivityManager;

.field private final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field protected mAllowLockscreenRemoteInput:Z

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field protected mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field protected mBackdropBack:Landroid/widget/ImageView;

.field protected mBackdropFront:Landroid/widget/ImageView;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:I

.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field protected mBouncerShowing:Z

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallBaseTime:J

.field private mCallState:Ljava/lang/String;

.field private mCameraLaunchGestureVibePattern:[J

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private final mCloudDataObserver:Landroid/database/ContentObserver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field protected mContextForUser:Landroid/content/Context;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field mDarkMode:Z

.field private final mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

.field mDemoMode:Z

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private mDisableFloatNotification:Z

.field protected mDisableNotificationAlerts:Z

.field mDisabled1:I

.field mDisabled2:I

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mDriveModeBg:Landroid/widget/LinearLayout;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mEnableFloatNotificationWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnableNotificationsReceiver:Landroid/content/BroadcastReceiver;

.field protected mExpandTopNotification:Z

.field private final mExpandTopNotificationObserver:Landroid/database/ContentObserver;

.field protected mExpandableUnderKeyguard:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field protected mFaceUnlockController:Lcom/android/keyguard/faceunlock/FaceUnlockController;

.field private mFadeKeyguardWhenUnlockByGxzw:Z

.field private mFakeArtworkReceiver:Landroid/content/BroadcastReceiver;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field protected mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

.field private mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

.field private mForceBlack:Z

.field private mForceBlackObserver:Landroid/database/ContentObserver;

.field private mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private mFullScreenGestureListener:Landroid/database/ContentObserver;

.field private mGameHandsFreeMode:Z

.field private mGameHandsFreeObserver:Landroid/database/ContentObserver;

.field private mGameModeObserver:Landroid/database/ContentObserver;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field private mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field protected mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field private mHasAnswerCall:Z

.field private mHasClearAllNotifications:Z

.field protected mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

.field protected mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpTicker:Z

.field protected mHideBackdropFront:Ljava/lang/Runnable;

.field protected mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private mInPinnedMode:Z

.field private final mInfo:Landroid/view/DisplayInfo;

.field private mInteractingWindows:I

.field private mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDNDEnabled:Z

.field private mIsFsgMode:Z

.field private mIsInDriveMode:Z

.field private mIsInDriveModeMask:Z

.field private mIsKeyguard:Z

.field private mIsRemoved:Z

.field private mJobHelper:Lcom/android/systemui/analytics/JobHelper;

.field mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field mKeyguardClock:Lcom/android/keyguard/KeyguardClockContainer;

.field protected mKeyguardFadingAway:Z

.field protected mKeyguardFadingAwayDelay:J

.field protected mKeyguardFadingAwayDuration:J

.field private mKeyguardGoingAway:Z

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

.field private mKeyguardRequested:Z

.field protected mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field protected mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCameraLaunchSource:I

.field private mLastDispatchedSystemUiVisibility:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenStackBounds:Landroid/graphics/Rect;

.field private mLastLoggedStateFingerprint:I

.field private mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraOnScreenTurningOn:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field protected mLaunchTransitionFadingAway:Z

.field protected mLayoutDirection:I

.field mLeaveOpenOnKeyguardHide:Z

.field mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field mMaxAllowedKeyguardNotifications:I

.field private mMaxKeyguardNotifications:I

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMiuiOptimizationObserver:Landroid/database/ContentObserver;

.field private mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

.field private mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoAnimationOnNextBarModeChange:Z

.field private mNotchRotation:I

.field private mNotificationClicker:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field protected mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mNotificationStyleObserver:Landroid/database/ContentObserver;

.field private mNotifications:Landroid/view/View;

.field private mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mPanelExpanded:Z

.field private mPendingNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemoteInputView:Landroid/view/View;

.field private mPendingWorkRemoteInputView:Landroid/view/View;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPixelFormat:I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mPreviousConfig:Landroid/content/res/Configuration;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field mQueueLock:Ljava/lang/Object;

.field private final mQuickSettingsLayoutObserver:Landroid/database/ContentObserver;

.field private mQuietModeEnable:Z

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mReinflateNotificationsOnUserSwitched:Z

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field protected mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mReportRejectedTouch:Landroid/view/View;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field private mScreenTurningOn:Z

.field protected mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field protected mScrimSrcModeEnabled:Z

.field protected mSecurityManager:Lmiui/security/SecurityManager;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShouldDisableFsgMode:Z

.field private mShouldPopup:Z

.field protected mShowLockscreenNotifications:Z

.field private final mShowNotificationIconObserver:Landroid/database/ContentObserver;

.field private mShowNotifications:Z

.field private mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

.field private mSliderStatusObserver:Landroid/database/ContentObserver;

.field private mSoftInputVisible:Z

.field protected mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field protected mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field mStartTracing:Ljava/lang/Runnable;

.field protected mStartedGoingToSleep:Z

.field protected mState:I

.field protected mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private mStatusBarStateLog:Landroid/metrics/LogMakerCompat;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field protected mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStopTracing:Ljava/lang/Runnable;

.field private mSystemForegroundWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mSystemUiVisibility:I

.field private mTelephonyManager:Lmiui/telephony/TelephonyManager;

.field private mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTmpInt2:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToggleBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleManager:Lmiui/app/ToggleManager;

.field mTracking:Z

.field mTrackingPosition:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field protected mUseHeadsUp:Z

.field private mUserExperienceObserver:Landroid/database/ContentObserver;

.field private final mUserFoldObserver:Landroid/database/ContentObserver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSetup:Z

.field private mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field private mVibrator:Landroid/os/Vibrator;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field protected mVrMode:Z

.field private mWaitingForKeyguardExit:Z

.field private mWakeUpComingFromTouch:Z

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field private mWakeupForNotification:Z

.field private final mWakeupForNotificationObserver:Landroid/database/ContentObserver;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I

.field private sService:Landroid/app/INotificationManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->EXTRA_APP_UID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->EXTRA_HIGH_PRIORITY_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/classifier/FalsingManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlack:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasClearAllNotifications:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInDriveModeMask:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/KeyguardNotificationHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/miui/voiptalk/service/MiuiVoipManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotchRotation:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotifications:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNotificationIconObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNotifications:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lmiui/app/ToggleManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/UiOffloadThread;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/StatusBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallBaseTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/StatusBar;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallBaseTime:J

    return-wide p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInDriveMode:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInDriveModeMask:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/phone/StatusBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotchRotation:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotifications:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNotifications:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotification:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDriveModeBg:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFadeKeyguardWhenUnlockByGxzw:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlack:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameHandsFreeMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsFsgMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar;I)Landroid/content/Context;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFoldIfNeeded()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFold()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->filterPackageNotifications(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateFoldView()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/statusbar/phone/StatusBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/statusbar/phone/StatusBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCallStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClickMenuSettings(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/StatusBar;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPlaybackActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUpdateFsgState()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->openFold()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->processForRemoteInput(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeRemoteInputEntriesKeptUntilCollapsed()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetViewForFilter()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->saveFiler(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateGutsState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDriveMode()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMessage(Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationIconsLayout()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/NotificationListenerService$RankingMap;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationRankingDelayed(Landroid/service/notification/NotificationListenerService$RankingMap;J)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->beep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap40(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpForNotificationInternal()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->changeNavBarViewState()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->changePkgImportance(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkRemoteInputOutside(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "debug.enable_remote_input"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-le v4, v6, :cond_0

    const-string/jumbo v4, "debug.child_notifs"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :goto_0
    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    const-string/jumbo v4, "debug.force_remoteinput_history"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    sput-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    sget-boolean v4, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_WINDOW_STATE:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->CHATTY:Z

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const-string/jumbo v4, "app_uid"

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->EXTRA_APP_UID:Ljava/lang/String;

    const-string/jumbo v4, "high_priority_setting"

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->EXTRA_HIGH_PRIORITY_SETTING:Ljava/lang/String;

    sput-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->sBootCompleted:Z

    :try_start_0
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v2

    const-string/jumbo v4, "android.software.freeform_window_management"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/systemui/content/pm/PackageManagerCompat;->hasSystemFeature(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->FREEFORM_WINDOW_MANAGEMENT:Z

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sput-object v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sput-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    sput-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    return-void

    :cond_0
    sget-boolean v4, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "debug.child_notifs"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto/16 :goto_0

    :cond_1
    move v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const-string/jumbo v0, "typefrom_status_bar_expansion"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->TYPE_FROM_STATUS_BAR_EXPANSION:Ljava/lang/String;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder;

    const-string/jumbo v2, "/sdcard/statusbar_gestures.dat"

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/GestureRecorder;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserExperienceObserver:Landroid/database/ContentObserver;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlack:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlackObserver:Landroid/database/ContentObserver;

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameHandsFreeObserver:Landroid/database/ContentObserver;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotchRotation:I

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInfo:Landroid/view/DisplayInfo;

    new-instance v0, Lcom/android/systemui/analytics/JobHelper;

    invoke-direct {v0}, Lcom/android/systemui/analytics/JobHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mJobHelper:Lcom/android/systemui/analytics/JobHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mToggleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFakeArtworkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFadeKeyguardWhenUnlockByGxzw:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLayoutDirection:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpTicker:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableNotificationAlerts:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$24;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiOptimizationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$26;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNotificationIconObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotification:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$27;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotificationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$28;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationStyleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$30;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserFoldObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCloudDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$32;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$33;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSliderStatusObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$37;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEnableNotificationsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$38;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$92;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$92;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandTopNotificationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$93;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$93;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQuickSettingsLayoutObserver:Landroid/database/ContentObserver;

    return-void

    :cond_0
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    :cond_1
    return-void
.end method

.method private addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    return-void
.end method

.method private addNavBarView()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsRemoved:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "NOTICE: navbarview is removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsRemoved:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "NOTICE: navbarview is nulll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->prepareNavigationBarView()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addNavigationBar()V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addNavigationBar: about to add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->prepareNavigationBarView()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addNotificationChildrenAndSort()V
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v8, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v7

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v0, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "StatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n child: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    invoke-virtual {v6, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyGroupChildAdded(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v6, v5, v8, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v8

    or-int/2addr v4, v8

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildOrderChangedEvent()V

    :cond_6
    return-void
.end method

.method private addStatusBarWindow()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v0, Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    return-void
.end method

.method private adminAllowsKeyguardFeature(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int v3, v0, p2

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private allowGroupShowOnKeyguardAgain(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v5, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5, v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setHasShownAfterUnlock(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNotificationGroup(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5, v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setHasShownAfterUnlock(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private areLightsOn()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private barMode(IIII)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    or-int/lit8 v0, p4, 0x1

    and-int v3, p1, p2

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    and-int v1, p1, v0

    if-ne v1, v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    and-int v1, p1, p4

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    and-int v1, p1, p3

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private beep(Ljava/lang/String;)V
    .locals 10

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->sService:Landroid/app/INotificationManager;

    if-nez v5, :cond_0

    const-string/jumbo v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->sService:Landroid/app/INotificationManager;

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->sService:Landroid/app/INotificationManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "buzzBeepBlinkForNotification"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->sService:Landroid/app/INotificationManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 25

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    invoke-virtual/range {p1 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v5

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$79;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$79;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/systemui/statusbar/NotificationSnooze;

    if-eqz v2, :cond_0

    move-object/from16 v24, v20

    check-cast v24, Lcom/android/systemui/statusbar/NotificationSnooze;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$80;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$80;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V

    :cond_0
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/systemui/statusbar/NotificationFilter;

    if-eqz v2, :cond_1

    move-object/from16 v19, v20

    check-cast v19, Lcom/android/systemui/statusbar/NotificationFilter;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$81;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v5, v12}, Lcom/android/systemui/statusbar/phone/StatusBar$81;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/NotificationFilter;->bindNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V

    :cond_1
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/systemui/statusbar/NotificationInfo;

    if-eqz v2, :cond_4

    move-object/from16 v8, v20

    check-cast v8, Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-virtual {v12}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v23

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannelCompat;

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v15, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannelCompat;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannelCompat;

    invoke-virtual {v2}, Landroid/app/NotificationChannelCompat;->getImportance()I

    move-result v11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$82;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar$82;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/os/UserHandle;)V

    move-object v13, v2

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/statusbar/NotificationInfo;->bindNotification(Landroid/app/INotificationManager;Ljava/util/List;ILcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V

    :cond_4
    return-void
.end method

.method private bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$87;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$87;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    const/high16 v0, 0x60000

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method private blockAndTrackNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContextForUser:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getUid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isXmsfCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.xmsf.action.SET_SHIELD_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.xiaomi.xmsf"

    const-string/jumbo v4, "com.xiaomi.xmsf.typedNotificationShield.NotificationShieldService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "key.setShield.type"

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "key.setShield.status"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->filterPackageNotifications(Ljava/lang/String;)V

    return-void
.end method

.method private cancelAutohide()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeNavBarViewState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsFsgMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NOTICE: full screen gesture function close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNavBarView()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    return-void

    :cond_0
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NOTICE: full screen gesture function open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNavBarView()V

    goto :goto_0
.end method

.method private changePkgImportance(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->changeImportance(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getPkgNotifications(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_0
    return-void
.end method

.method private changeViewPosition(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private checkRemoteInputOutside(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    :cond_0
    return-void
.end method

.method private clearCurrentMediaNotification()V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DEBUG_MEDIA: Disconnecting from old controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_1
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method

.method private closeFold()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "closeFold fold animating, cancel closing fold"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_CLOSE_FOLD:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v0}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->fold(Z)V

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->setFoldAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onCloseFold(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onCloseFold()V

    return-void
.end method

.method private closeFoldIfNeeded()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFold()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_0
.end method

.method private computeNavigationBarMode(IIIII)I
    .locals 3

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->navigationBarMode(IIII)I

    move-result v1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->navigationBarMode(IIII)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    return v0
.end method

.method private createBgHandler()Lcom/android/systemui/statusbar/phone/StatusBar$W;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "StatusBar"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$W;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$W;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Looper;)V

    return-object v0
.end method

.method private dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method private dismissVolumeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/DemoMode;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enableFloatNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v1, v2}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotificationHeadsUp(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallScreenShowing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isPhoneInCallNotificationInVideo(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLowStorageMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isVrMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No peeking: miui smart intercept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShouldPopup:Z

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSoftInputVisible:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableFloatNotification:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEnableFloatNotificationWhitelist:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTopActivityPkg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/app/MiuiNotification;->setFloatTime(I)Landroid/app/MiuiNotification;

    :cond_4
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peeking: miui smart suspension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQuietModeEnable:Z

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No peeking: has fullscreen intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableFloatNotification:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No peeking: disable float notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallScreenShowing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isPhoneInCallNotificationInVideo(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peeking: video in call notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAppNotificationFlag(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Z)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasProgressbar(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peeking: miui permission allows: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQuietModeEnable:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContextForUser:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peeking: in call notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_b
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No peeking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private enableNotificaitonIfNeed()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "notification_fored_enabled_list"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lmiui/util/NotificationFilterHelper;->getNotificationForcedEnabledList()Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "notification_fored_enabled_list"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContextForUser:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fadeViewWhenUnlockByGxzw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$73;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$73;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private filterNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->canSendNotificationForTargetPkg(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1, v2}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAppNotificationFlag(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Z)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onNotificationClear(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "filter Notification key=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemForegroundWhitelist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-class v1, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->needDisableUsbNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.mediatek.selfregister"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.mediatek.deviceregister"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private filterPackageNotifications(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->getPkgNotifications(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->filterNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    :cond_0
    return-void
.end method

.method private getAppNotificationFlag(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Z)I
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationCompat;->getChannelId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContextForUser:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getUid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v4}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lmiui/util/NotificationFilterHelper;->getChannelFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContextForUser:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getUid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v4}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v1

    return v1
.end method

.method private getContextForUser(I)Landroid/content/Context;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit16 v3, p0, 0xff

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v3, v2

    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    shl-int/lit8 v2, v2, 0x9

    or-int/2addr v3, v2

    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v3, v2

    if-eqz p4, :cond_3

    move v2, v0

    :goto_3
    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v2, v3

    if-eqz p5, :cond_4

    :goto_4
    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v1
.end method

.method private handleFoldViewVisibility()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getFoldCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFoldViewVisibility(ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v5}, Landroid/service/notification/StatusBarNotificationCompat;->getOverrideGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setKeepInParent(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Z)Z
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasSmallIcon(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isPkgWontAutoBundle(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    return v5

    :cond_1
    new-instance v3, Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {v3, p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;-><init>(Landroid/service/notification/StatusBarNotification;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getPkgImportance(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setImportance(I)V

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_0
    return v4

    :cond_2
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    :cond_0
    return-void
.end method

.method private handleVisibleToUserChangedImpl(Z)V
    .locals 6

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private hasActiveClearableFoldNotifications()Z
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getFoldEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private hasActiveClearableNotifications()Z
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableFoldNotifications()Z

    move-result v3

    return v3
.end method

.method private inflateDismissView()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v2, 0x7f0a01e0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0d00fe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$53;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$53;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const v1, 0x7f0a01f0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissView;->setAccessibilityTraversalAfter(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAccessibilityTraversalBefore(I)V

    return-void
.end method

.method private inflateEmptyShadeView()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d00fc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setViewType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    return-void
.end method

.method private inflateFoldView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d0039

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setViewType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$50;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$50;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClickListener(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$51;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$51;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d0038

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setViewType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$52;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$52;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFoldView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private inflateShelf()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d0100

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStatusBarState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setViewType(I)V

    return-void
.end method

.method private inflateSignalClusters()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->reinflateSignalCluster(Landroid/view/View;)Lcom/android/systemui/statusbar/SignalClusterView;

    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    return-void
.end method

.method private isAllowShownOnKeyguard(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationCompat;->getChannelId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isXmsf(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v3, "_keyguard"

    invoke-static {v2, v1, v0, v3}, Lmiui/util/NotificationFilterHelper;->isAllowedWithChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_keyguard"

    invoke-static {v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isAnyProfilePublicMode()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isEnableKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isMediaNotification()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCts(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->hasShownAfterUnlock()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLonelyAutoGroupSummaryOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isAllowShownOnKeyguard(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1}, Landroid/app/MiuiNotification;->isEnableKeyguard()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExpansionAllowed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandableUnderKeyguard:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isHideSensitiveByAppLock(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v1, v2}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getCurrentUserIdIfNeeded(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->shouldShowPublicNotificationByAppLock(Landroid/content/Context;Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isLonelyAutoGroupSummaryOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v3}, Landroid/service/notification/StatusBarNotificationCompat;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNotificationGroup(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    move-result-object v1

    if-nez v1, :cond_1

    return v6

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isEnableKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_3
    return v6
.end method

.method private isLowStorageMode()Z
    .locals 2

    const-string/jumbo v0, "sys.is_mem_low"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isPlaybackActive(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return v0
.end method

.method private isVrMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vr_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadWhiteList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemForegroundWhitelist:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEnableFloatNotificationWhitelist:Ljava/util/List;

    return-void
.end method

.method private logStateToEventlog()V
    .locals 14

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v12

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v12, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMakerCompat;

    if-nez v0, :cond_0

    new-instance v0, Landroid/metrics/LogMakerCompat;

    invoke-direct {v0, v13}, Landroid/metrics/LogMakerCompat;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMakerCompat;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMakerCompat;

    if-eqz v3, :cond_2

    const/16 v0, 0xc5

    :goto_0
    invoke-virtual {v8, v0}, Landroid/metrics/LogMakerCompat;->setCategory(I)Landroid/metrics/LogMakerCompat;

    move-result-object v8

    if-eqz v1, :cond_3

    move v0, v11

    :goto_1
    invoke-virtual {v8, v0}, Landroid/metrics/LogMakerCompat;->setType(I)Landroid/metrics/LogMakerCompat;

    move-result-object v8

    if-eqz v4, :cond_4

    move v0, v11

    :goto_2
    invoke-virtual {v8, v0}, Landroid/metrics/LogMakerCompat;->setSubtype(I)Landroid/metrics/LogMakerCompat;

    move-result-object v0

    invoke-static {v6, v7, v0}, Landroid/metrics/LogMakerCompat;->write(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Landroid/metrics/LogMakerCompat;)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v1, :cond_5

    move v7, v11

    :goto_3
    if-eqz v2, :cond_6

    move v8, v11

    :goto_4
    if-eqz v3, :cond_7

    move v9, v11

    :goto_5
    if-eqz v4, :cond_8

    move v10, v11

    :goto_6
    if-eqz v5, :cond_9

    :goto_7
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    iput v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0xc4

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v13

    goto :goto_2

    :cond_5
    move v7, v13

    goto :goto_3

    :cond_6
    move v8, v13

    goto :goto_4

    :cond_7
    move v9, v13

    goto :goto_5

    :cond_8
    move v10, v13

    goto :goto_6

    :cond_9
    move v11, v13

    goto :goto_7
.end method

.method private navigationBarMode(IIII)I
    .locals 2

    const/4 v0, 0x0

    and-int v1, p1, p2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int v1, p1, p3

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    and-int v1, p1, p4

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private needExtraBottomPadding(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomViewNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private needExtraTopPadding(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomViewNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private needStatBadgeNum(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isMediaNotification()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v7

    xor-int/lit8 v1, v7, 0x1

    if-nez v0, :cond_0

    move v3, v1

    :goto_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->visibility:I

    if-nez v7, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    :goto_2
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_2
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onCallStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasAnswerCall:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameHandsFreeMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpNotification()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onExitCall()V

    goto :goto_0
.end method

.method private onClickMenuSettings(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 13

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v3

    instance-of v11, v3, Lcom/android/systemui/statusbar/NotificationInfo;

    if-eqz v11, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v11}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v11}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getUid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v11}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getMessageId(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v9, 0x0

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v11}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Landroid/content/Intent;

    sget-object v12, Lcom/android/systemui/statusbar/phone/StatusBar;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v6, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v11, 0x8000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v11, "appName"

    const-string/jumbo v12, ""

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "packageName"

    invoke-virtual {v4, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "userId"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "messageId"

    invoke-virtual {v4, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "notificationId"

    const-string/jumbo v12, ""

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "miui.category"

    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v12}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    :cond_0
    :goto_0
    if-nez v9, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "com.android.settings.Settings$NotificationFilterActivity"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v11, 0x8000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v11, "appName"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v12}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "packageName"

    invoke-virtual {v4, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "userId"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "messageId"

    invoke-virtual {v4, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "notificationId"

    const-string/jumbo v12, ""

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v11, "StatusBar"

    const-string/jumbo v12, "Failed startActivityAsUser() "

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v11, "StatusBar"

    const-string/jumbo v12, "Failed startActivityAsUser() "

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Launch transition: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    return-void
.end method

.method private onUpdateFsgState()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInPinnedMode:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsFsgMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShouldDisableFsgMode:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "typefrom_status_bar_expansion"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/Utils;->updateFsgState(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShouldDisableFsgMode:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openFold()V
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "openFold fold animating, cancel opening fold"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_OPEN_FOLD:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v0}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->fold(Z)V

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->setFoldAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->lastQsCovered(Z)V

    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onOpenFold(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOpenFold(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$55;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$55;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v5, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInUserVisibleArea(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int v2, v5, v6

    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "ignored %d rows when dismiss all"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDismissAllToChild(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private processForRemoteInput(Landroid/app/Notification;)V
    .locals 13

    const/4 v10, 0x0

    sget-boolean v9, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "android.wearable.EXTENSIONS"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v9, v9

    if-nez v9, :cond_6

    :cond_1
    const/4 v7, 0x0

    new-instance v8, Landroid/app/Notification$WearableExtender;

    invoke-direct {v8, p1}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v8}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v11, v5

    move v9, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v6, v5, v9

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v7, v0

    :cond_4
    if-eqz v7, :cond_2

    :cond_5
    if-eqz v7, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/app/Notification$Action;

    aput-object v7, v9, v10

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private registerContentObserver()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_show_notifications"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_notification_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNotificationIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_allow_remote_input"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_notification"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_handsfree"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameHandsFreeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_optimization"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiOptimizationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_notification_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_fold"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserFoldObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCloudDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sc_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSliderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "upload_log_pref"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserExperienceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_expand_top_notification"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandTopNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_expandable_under_keyguard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_settings_layout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQuickSettingsLayoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static reinflateSignalCluster(Landroid/view/View;)Lcom/android/systemui/statusbar/SignalClusterView;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0a0295

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/SignalClusterView;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d00f3

    invoke-virtual {v7, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070406

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v7, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    sget-boolean v7, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNotchEar()V

    :cond_0
    return-object v3

    :cond_1
    return-object v5

    :cond_2
    return-object v8
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private removeNavBarView()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsRemoved:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsRemoved:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeNotificationChildren()V
    .locals 12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v10, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v9

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private removeRemoteInputEntriesKeptUntilCollapsed()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private resetViewForFilter()V
    .locals 0

    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->scheduleAutohide()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private runInBackground()V
    .locals 2

    const-class v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->asyncUpdate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$42;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    new-array v10, v0, [I

    new-array v9, v0, [I

    invoke-virtual {p1, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    invoke-virtual {p3, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    aget v0, v9, v1

    aget v2, v10, v1

    sub-int/2addr v0, v2

    add-int v4, v0, v7

    aget v0, v9, v3

    aget v2, v10, v3

    sub-int/2addr v0, v2

    add-int v5, v0, v8

    move-object v0, p0

    move v2, v1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    return-void
.end method

.method private saveFiler(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getFoldPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->setPkgImportance(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->changeImportance(Ljava/lang/String;I)V

    const-class v2, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onSetImportance(Lcom/android/systemui/miui/statusbar/ExpandedNotification;I)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldCloseFoldWhenSaveFiler(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFold()V

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->blockAndTrackNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    goto :goto_2
.end method

.method private scheduleAutohide()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendExitFloatingIntent(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1}, Landroid/app/MiuiNotification;->getExitFloatingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "Notification has exitFloatingIntent; sending exitFloatingIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1}, Landroid/app/MiuiNotification;->getExitFloatingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "floating intent send occur exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setSystemExpandedIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandTopNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    :cond_0
    return-void
.end method

.method private shouldCloseFoldWhenSaveFiler(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getFoldPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_1
    return v3
.end method

.method private shouldSuppressFullScreenIntent(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isVrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOff(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldUseIncreaedColleapsedHeight(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.progress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBouncerIfKeyguard()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer()V

    :cond_1
    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    return-void
.end method

.method private updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getMessageClassName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "_message"

    invoke-static {v7, p1, v8}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/NotificationData;->getPkgNotifications(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v7}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->needStatBadgeNum(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v7}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "com.android.contacts"

    const-string/jumbo v0, ".activities.TwelveKeyDialer"

    :cond_2
    invoke-direct {p0, v5, v0, v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;II)V

    :goto_1
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v7}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getMessageClassName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->needStatBadgeNum(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v7}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_2

    :cond_5
    invoke-direct {p0, v7, v7, v8, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;II)V

    goto :goto_1
.end method

.method private updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;II)V
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.extra.update_application_message_text"

    if-lez p3, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.update_application_component_name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "targetPkg"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "_message"

    invoke-static {v3, p1, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "miui.intent.extra.application_show_corner"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.home"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update app badge num: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",isAllowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-ne p4, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private updateDozing()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "StatusBar#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setDozing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setDozing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private updateDozingState()V
    .locals 4

    const-string/jumbo v1, "StatusBar#updateDozingState"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDozing(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDark(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDriveMode()V
    .locals 5

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationIconsLayout()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDriveModeBg:Landroid/widget/LinearLayout;

    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-nez v2, :cond_3

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->setDriveMode(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    if-nez v1, :cond_4

    move v2, v0

    :goto_3
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->updateInDriveMode(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    if-nez v1, :cond_5

    :goto_4
    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInDriveModeMask:Z

    :cond_0
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToDriveModeView(ZZ)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4
.end method

.method private updateEmptyShadeView()V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldHeaderView:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFoldFooterView:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    :goto_1
    and-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showEmptyShadeView(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateFsgState()V
    .locals 4

    const/16 v1, 0x3ec

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateGutsState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 11

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v2, v1

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    return v1

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v7

    if-nez v7, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$85;

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBar$85;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    return v3
.end method

.method private updateHeadsUpSetting()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableNotificationAlerts:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    const-string/jumbo v2, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "heads up is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "disabled"

    goto :goto_0
.end method

.method private updateIsKeyguard()Z
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    if-nez v2, :cond_1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguardImpl()V

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguardImpl()Z

    move-result v2

    return v2
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 10

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandableUnderKeyguard:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_show_notifications"

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    const/4 v9, 0x1

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setShowLockscreenNotifications(Z)V

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_allow_remote_input"

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :goto_3
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_4

    const/4 v3, 0x1

    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockScreenAllowRemoteInput(Z)V

    :goto_6
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    move v3, v5

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockScreenAllowRemoteInput(Z)V

    goto :goto_6
.end method

.method private updateMessage(Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->pkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->className:Ljava/lang/CharSequence;

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->num:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->userId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v5

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    xor-int/lit8 v0, v5, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v4

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsLowPriority(Z)V

    if-eqz v1, :cond_2

    if-eq v4, v0, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    invoke-virtual {v5, p3, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTargetSdk()I

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x9

    if-lt v5, v8, :cond_3

    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v5, v8, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLegacy(Z)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v5, :cond_4

    :goto_4
    iput-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    iput-object p3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    :goto_5
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUseIncreaedColleapsedHeight(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedCollapsedHeight(Z)V

    invoke-virtual {p3, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedHeadsUpHeight(Z)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    move v5, v7

    goto :goto_3

    :cond_4
    move v6, v7

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5
.end method

.method private updateNotificationIconsLayout()V
    .locals 5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNotifications:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    xor-int/lit8 v2, v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotifications:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_2
.end method

.method private updateNotificationRankingDelayed(Landroid/service/notification/NotificationListenerService$RankingMap;J)V
    .locals 4

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotificationRankingDelayed messageReceiveTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingDelayed(Landroid/service/notification/NotificationListenerService$RankingMap;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationViewsOnly()V

    :cond_0
    return-void
.end method

.method private updateNotificationShade()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v26

    if-eqz v26, :cond_1

    new-instance v26, Lcom/android/systemui/statusbar/phone/StatusBar$58;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$58;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v21, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_c

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v26

    if-nez v26, :cond_2

    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v26

    if-eqz v26, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v23

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v12

    if-eqz v23, :cond_8

    move v9, v12

    :goto_3
    iget-boolean v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitive:Z

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v9, :cond_4

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitive:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_4
    if-nez v9, :cond_9

    iget-boolean v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    move/from16 v17, v0

    :goto_4
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v26

    xor-int/lit8 v7, v26, 0x1

    :goto_5
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_5
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(ZZ)V

    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v26, v0

    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v26, v0

    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-nez v13, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const/16 v23, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_d

    instance-of v0, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_e
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v26, v0

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildTransferInProgress(Z)V

    :cond_f
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeAllChildren()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildTransferInProgress(Z)V

    goto :goto_7

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotificationChildren()V

    const/4 v10, 0x0

    :goto_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_13

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-nez v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotificationChildrenAndSort()V

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->changeViewPosition(Z)V

    const/4 v11, 0x0

    const/4 v10, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v0, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v26, v0

    if-nez v26, :cond_14

    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_14
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v19

    if-eq v5, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v26

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    :cond_15
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_b

    :cond_17
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v0, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v26, v0

    if-eqz v26, :cond_18

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_19
    const/4 v10, 0x0

    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_1f

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v10, :cond_1a

    const/16 v26, 0x1

    :goto_e
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsFirstRow(Z)V

    if-nez v10, :cond_1b

    const/16 v26, 0x0

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->needExtraTopPadding(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHasExtraTopPadding(Z)V

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ne v10, v0, :cond_1c

    const/16 v26, 0x0

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->needExtraBottomPadding(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHasExtraBottomPadding(Z)V

    if-eqz v10, :cond_1d

    add-int/lit8 v26, v10, -0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    :goto_11
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-eq v10, v0, :cond_1e

    const/16 v27, 0x1

    :goto_12
    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedDrawBgDivider(ZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_1a
    const/16 v26, 0x0

    goto :goto_e

    :cond_1b
    add-int/lit8 v26, v10, -0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_f

    :cond_1c
    add-int/lit8 v26, v10, 0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_10

    :cond_1d
    const/16 v26, 0x0

    goto :goto_11

    :cond_1e
    const/16 v27, 0x0

    goto :goto_12

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpChildOrderMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->changeViewPosition(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSpeedBumpIndex()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateClearAll()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardClock:Lcom/android/keyguard/KeyguardClockContainer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNoVisibleNotifications()Z

    move-result v26

    xor-int/lit8 v28, v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move/from16 v26, v0

    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    const/16 v26, 0x1

    :goto_13
    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardClockContainer;->updateClockView(ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V

    return-void

    :cond_20
    const/16 v26, 0x0

    goto :goto_13
.end method

.method private updateNotificationViewsOnly()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleFoldViewVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    return-void
.end method

.method private updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getFoldEntries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged(Ljava/util/List;)V

    return-void
.end method

.method private updateNotificationsOnDensityOrFontScaleChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v3, v5}, Landroid/app/MiuiNotification;->setEnableFloat(Z)Landroid/app/MiuiNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updatePublicMode()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v0

    :goto_0
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePublicMode() showingKeyguard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",devicePublic="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    move v2, v0

    if-nez v0, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v5, v4}, Lcom/android/internal/widget/LockPatternUtilsCompat;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePublicMode() isProfilePublic="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenPublicMode(ZI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpansionAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private updateReportRejectedTouchVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateSpeedBumpIndex()V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    instance-of v7, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v6

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v1

    goto :goto_1

    :cond_2
    if-ne v5, v0, :cond_3

    const/4 v3, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(IZ)V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private userAutohide()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private vibrateForCameraGesture()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wakeUpForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotification:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsDNDEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPsensorDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$57;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$57;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerSeneorsForKeyguard(Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isNonUI()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpForNotificationInternal()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "miui_keyguard"

    const-string/jumbo v2, "not wake up for notification in nonui mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wakeUpForNotificationInternal()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "com.android.systemui:NOTIFICATION"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sWakeupByNotification:Z

    const-string/jumbo v0, "keyguard_screenon_by_notification"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    return-void
.end method

.method private wrapNotificationEvent(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setCreateTimeStamp(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->getCreateTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setCreateTimeStamp(J)V

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->getVersion()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setVersion(I)V

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->filterNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addNotification key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasClearAllNotifications:Z

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->wrapNotificationEvent(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNotificationViews(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isHideSensitiveByAppLock(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->needUpdateBadgeNum:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldSuppressFullScreenIntent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No Fullscreen intent: suppressed by DND: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v5

    invoke-interface {v4, p1, v5}, Lcom/android/systemui/ForegroundServiceController;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    invoke-static {v4, p1, v5}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->updateLocalModelIfNeed(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    invoke-static {v4, v5}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->uploadLocalAlgoModelIfNeed(Landroid/content/Context;Landroid/os/Handler;)V

    const-class v4, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-interface {v4, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitor;->notifyNotificationAdded(Landroid/service/notification/StatusBarNotification;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No Fullscreen intent: not important enough: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notification has fullScreenIntent; sending fullScreenIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x8ca2

    :try_start_0
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "note_fullscreen"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "StatusBar"

    const-string/jumbo v5, "throw exception when sending full screen intent"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    const-class v0, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-interface {v0, v1}, Lcom/android/systemui/miui/policy/NotificationsMonitor;->notifyNotificationArrived(Landroid/service/notification/StatusBarNotification;)V

    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onArrive(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 5

    const/16 v4, 0x3fc

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateCollapse(): mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    :cond_3
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateExpand: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateExpand: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    return-void
.end method

.method public appTransitionCancelled()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public appTransitionFinished()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0

    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0

    return-void
.end method

.method awakenDreams()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->awakenDreamsAsync()V

    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public canPanelBeCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v0

    return v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    const/16 v0, 0x3ff

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isExtremePowerSave()Z

    move-result v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    xor-int/lit8 v0, v1, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlack:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method checkBarModes()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    return-void
.end method

.method checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAutohide()V

    :cond_0
    return-void
.end method

.method public clearAllNotifications()V
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasClearAllNotifications:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasClearAllNotifications:Z

    if-eqz v11, :cond_0

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v11, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_7

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    if-eqz v4, :cond_1

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_2

    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_2
    :goto_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    if-eqz v4, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_3

    :cond_4
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    if-eqz v4, :cond_6

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_2

    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFoldIfNeeded()V

    :cond_9
    new-instance v11, Lcom/android/systemui/statusbar/phone/StatusBar$54;

    invoke-direct {v11, p0, v10}, Lcom/android/systemui/statusbar/phone/StatusBar$54;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->clickTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(ZZIIZ)V

    :cond_0
    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_1
    return-void
.end method

.method public closeQs()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$74;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$74;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public collapsePanels()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    return-void
.end method

.method protected computeBarMode(IIIII)I
    .locals 3

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(IIII)I

    move-result v1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(IIII)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    return v0
.end method

.method protected computeStatusBarMode(II)I
    .locals 6

    const/high16 v3, 0x4000000

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x8

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v0

    return v0
.end method

.method public createAndAddWindows()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addStatusBarWindow()V

    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0d008e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTopActivityPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/CustomizeUtil;->forceLayoutHideNavigation(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->disableChangeBg(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->setNavigationBarView(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method

.method protected createNotificationViews(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createNotificationViews(notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->createIcons(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected createUserSwitcher()V
    .locals 5

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a016e

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public disable(IIZ)V
    .locals 12

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    const/4 v7, 0x1

    :goto_0
    and-int/2addr p3, v7

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    xor-int v0, p1, v5

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    xor-int v1, p2, v6

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "disable1: 0x%08x -> 0x%08x (diff1: 0x%08x)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "disable2: 0x%08x -> 0x%08x (diff2: 0x%08x)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disable<"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v7, 0x10000

    and-int/2addr v7, p1

    if-eqz v7, :cond_b

    const/16 v7, 0x45

    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x10000

    and-int/2addr v7, v0

    if-eqz v7, :cond_c

    const/16 v7, 0x21

    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x20000

    and-int/2addr v7, p1

    if-eqz v7, :cond_d

    const/16 v7, 0x49

    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x20000

    and-int/2addr v7, v0

    if-eqz v7, :cond_e

    const/16 v7, 0x21

    :goto_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x40000

    and-int/2addr v7, p1

    if-eqz v7, :cond_f

    const/16 v7, 0x41

    :goto_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x40000

    and-int/2addr v7, v0

    if-eqz v7, :cond_10

    const/16 v7, 0x21

    :goto_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x100000

    and-int/2addr v7, p1

    if-eqz v7, :cond_11

    const/16 v7, 0x53

    :goto_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x100000

    and-int/2addr v7, v0

    if-eqz v7, :cond_12

    const/16 v7, 0x21

    :goto_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_13

    const/16 v7, 0x42

    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x400000

    and-int/2addr v7, v0

    if-eqz v7, :cond_14

    const/16 v7, 0x21

    :goto_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x200000

    and-int/2addr v7, p1

    if-eqz v7, :cond_15

    const/16 v7, 0x48

    :goto_b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x200000

    and-int/2addr v7, v0

    if-eqz v7, :cond_16

    const/16 v7, 0x21

    :goto_c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x1000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_17

    const/16 v7, 0x52

    :goto_d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x1000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_18

    const/16 v7, 0x21

    :goto_e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x800000

    and-int/2addr v7, p1

    if-eqz v7, :cond_19

    const/16 v7, 0x43

    :goto_f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x800000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1a

    const/16 v7, 0x21

    :goto_10
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x2000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_1b

    const/16 v7, 0x53

    :goto_11
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v7, 0x2000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1c

    const/16 v7, 0x21

    :goto_12
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "> disable2<"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_1d

    const/16 v7, 0x51

    :goto_13
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_1e

    const/16 v7, 0x21

    :goto_14
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_1f

    const/16 v7, 0x49

    :goto_15
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_20

    const/16 v7, 0x21

    :goto_16
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, p2, 0x4

    if-eqz v7, :cond_21

    const/16 v7, 0x4e

    :goto_17
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_22

    const/16 v7, 0x21

    :goto_18
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, p2, 0x8

    if-eqz v7, :cond_23

    const/16 v7, 0x47

    :goto_19
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_24

    const/16 v7, 0x21

    :goto_1a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_25

    const/16 v7, 0x52

    :goto_1b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_26

    const/16 v7, 0x21

    :goto_1c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x3e

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "StatusBar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, 0x10000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1

    const/high16 v7, 0x10000

    and-int/2addr v7, p1

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    :cond_1
    const/high16 v7, 0x1000000

    and-int/2addr v7, v0

    if-eqz v7, :cond_2

    const/high16 v7, 0x1000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v8, 0x3fc

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v8, 0x3fc

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    :cond_2
    const v7, 0x1600200

    and-int/2addr v7, v0

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    :cond_3
    const/high16 v7, 0x40000

    and-int/2addr v7, v0

    if-eqz v7, :cond_4

    const/high16 v7, 0x40000

    and-int/2addr v7, p1

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    :goto_1d
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableNotificationAlerts:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHeadsUpSetting()V

    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    :cond_5
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    and-int/lit8 v7, p2, 0x4

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_28

    const/4 v7, 0x1

    :goto_1e
    sput-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    and-int/lit16 v7, v0, 0x100

    if-eqz v7, :cond_8

    const/4 v4, 0x0

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    if-eqz v7, :cond_7

    const/4 v4, 0x1

    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsFsgMode:Z

    if-eqz v7, :cond_8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.android.systemui"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.android.systemui.fullscreen.statechange"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "isEnter"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    and-int/lit16 v7, v0, 0x400

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_29

    const/4 v7, 0x1

    :goto_1f
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableFloatNotification:Z

    :cond_9
    return-void

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0x65

    goto/16 :goto_1

    :cond_c
    const/16 v7, 0x20

    goto/16 :goto_2

    :cond_d
    const/16 v7, 0x69

    goto/16 :goto_3

    :cond_e
    const/16 v7, 0x20

    goto/16 :goto_4

    :cond_f
    const/16 v7, 0x61

    goto/16 :goto_5

    :cond_10
    const/16 v7, 0x20

    goto/16 :goto_6

    :cond_11
    const/16 v7, 0x73

    goto/16 :goto_7

    :cond_12
    const/16 v7, 0x20

    goto/16 :goto_8

    :cond_13
    const/16 v7, 0x62

    goto/16 :goto_9

    :cond_14
    const/16 v7, 0x20

    goto/16 :goto_a

    :cond_15
    const/16 v7, 0x68

    goto/16 :goto_b

    :cond_16
    const/16 v7, 0x20

    goto/16 :goto_c

    :cond_17
    const/16 v7, 0x72

    goto/16 :goto_d

    :cond_18
    const/16 v7, 0x20

    goto/16 :goto_e

    :cond_19
    const/16 v7, 0x63

    goto/16 :goto_f

    :cond_1a
    const/16 v7, 0x20

    goto/16 :goto_10

    :cond_1b
    const/16 v7, 0x73

    goto/16 :goto_11

    :cond_1c
    const/16 v7, 0x20

    goto/16 :goto_12

    :cond_1d
    const/16 v7, 0x71

    goto/16 :goto_13

    :cond_1e
    const/16 v7, 0x20

    goto/16 :goto_14

    :cond_1f
    const/16 v7, 0x69

    goto/16 :goto_15

    :cond_20
    const/16 v7, 0x20

    goto/16 :goto_16

    :cond_21
    const/16 v7, 0x6e

    goto/16 :goto_17

    :cond_22
    const/16 v7, 0x20

    goto/16 :goto_18

    :cond_23
    const/16 v7, 0x67

    goto/16 :goto_19

    :cond_24
    const/16 v7, 0x20

    goto/16 :goto_1a

    :cond_25
    const/16 v7, 0x72

    goto/16 :goto_1b

    :cond_26
    const/16 v7, 0x20

    goto/16 :goto_1c

    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_1d

    :cond_28
    const/4 v7, 0x0

    goto/16 :goto_1e

    :cond_29
    const/4 v7, 0x0

    goto :goto_1f
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    const/16 v0, 0x403

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v6, "enter"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    :cond_0
    :goto_0
    const-string/jumbo v6, "enter"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "exit"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    const-string/jumbo v6, "volume"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v6, p1, p2}, Lcom/android/systemui/volume/VolumeComponent;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    if-nez v3, :cond_3

    const-string/jumbo v6, "clock"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const v6, 0x7f0a0087

    invoke-direct {p0, p1, p2, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_4
    if-nez v3, :cond_5

    const-string/jumbo v6, "battery"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v6, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    if-nez v3, :cond_7

    const-string/jumbo v6, "status"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v6, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v6, :cond_a

    if-nez v3, :cond_9

    const-string/jumbo v6, "network"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v6, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    if-nez v3, :cond_b

    const-string/jumbo v6, "notifications"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v6, :cond_11

    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v6, :cond_12

    const/4 v5, 0x4

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const-string/jumbo v6, "bars"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "mode"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "opaque"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v1, 0x0

    :goto_4
    const/4 v6, -0x1

    if-eq v1, v6, :cond_d

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    :cond_d
    return-void

    :cond_e
    const-string/jumbo v6, "exit"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto/16 :goto_0

    :cond_f
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-nez v6, :cond_0

    const-string/jumbo v6, "enter"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_11
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v7, 0x7f0a01e6

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_12
    const/4 v5, 0x0

    goto :goto_3

    :cond_13
    const-string/jumbo v6, "translucent"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v1, 0x2

    goto :goto_4

    :cond_14
    const-string/jumbo v6, "semi-transparent"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v1, 0x1

    goto :goto_4

    :cond_15
    const-string/jumbo v6, "transparent"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v1, 0x4

    goto :goto_4

    :cond_16
    const-string/jumbo v6, "warning"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v1, 0x5

    goto :goto_4

    :cond_17
    const/4 v1, -0x1

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "Current Status Bar state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mExpandedVisible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", mTrackingPosition="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTrackingPosition:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mTracking="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTracking:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mDisplayMetrics="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mStackScroller: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " scroll "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    const-string/jumbo v4, "  mPendingNotifications="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "null"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v4, "  mInteractingWindows="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mSystemUiVisibility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "  disable1=0x%08x disable2=0x%08x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "  mStatusBarWindowState="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v4}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "  mStatusBarMode="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "  mDozing="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v4, "  mZenMode="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenMode:I

    invoke-static {v4}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "  mUseHeadsUp="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "mStatusBarView"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_1
    const-string/jumbo v4, "  mMediaSessionManager="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v4, "  mMediaNotificationKey="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "  mMediaController="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  mMediaMetadata="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v6, "android.media.metadata.TITLE"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Panels: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    mNotificationPanel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "      "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string/jumbo v6, "  "

    invoke-virtual {v4, p2, v6}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "  status bar gestures: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/statusbar/GestureRecorder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/classifier/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v4, "SharedPreferences:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_8
    const-string/jumbo v4, "  mHeadsUpManager: null"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "  mGroupManager: null"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "AppNotificationSettings:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public endAffordanceLaunch()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$67;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/systemui/statusbar/phone/StatusBar$67;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V

    invoke-direct {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$71;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$71;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public fadeKeyguardWhenUnlockByGxzw(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyStartFading()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFadeKeyguardWhenUnlockByGxzw:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$72;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$72;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeViewWhenUnlockByGxzw(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyStartFading()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 17

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isMediaNotification()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v13}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v15, "android.mediaSession"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/media/session/MediaSession$Token;

    if-eqz v12, :cond_4

    new-instance v2, Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13, v12}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v13

    const/4 v15, 0x3

    if-ne v15, v13, :cond_4

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "StatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DEBUG_MEDIA: found mediastyle controller matching "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v8, v6

    move-object v5, v2

    :cond_1
    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v13

    const/4 v15, 0x3

    if-ne v15, v13, :cond_2

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v13, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v13}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v13, :cond_3

    const-string/jumbo v13, "StatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DEBUG_MEDIA: found controller matching "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v5, v2

    move-object v8, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v13, v15}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v13}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v13, :cond_7

    const-string/jumbo v13, "StatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DEBUG_MEDIA: insert listener, receive metadata: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v8, :cond_8

    iget-object v13, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v13}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v13, :cond_8

    const-string/jumbo v13, "StatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DEBUG_MEDIA: Found new media notification: key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " controller="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    const/4 v9, 0x1

    :cond_9
    monitor-exit v14

    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    :cond_a
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    return-void

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardGoingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardDoneFading()V

    return-void
.end method

.method protected getActivityOptions()Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityOptionsCompat;->setLaunchStackId(Landroid/app/ActivityOptions;III)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method public getBarState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryLevel:I

    return v0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayDensity()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getFingerprintUnlockController()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public getMaxKeyguardNotifications()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    return v0
.end method

.method protected getMaxKeyguardNotifications(Z)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->computeMaxKeyguardNotifications(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$83;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$83;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected getNotificationMenuClicker()Lcom/android/systemui/SwipeHelper$MenuPressListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$84;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$84;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$49;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$49;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public getTopActivityPkg()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public goToKeyguard()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    const/4 v1, 0x0

    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v2

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    goto :goto_1
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSystemNavigationKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isDeviceInteractive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x118

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0x1ed

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 v0, 0x119

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0x1ee

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "panel_open"

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "panel_open_qs"

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLogger;->startNotificationLogging()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLogger;->stopNotificationLogging()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    goto :goto_0
.end method

.method public hasActiveNotifications()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideFingerprintDialog()V
    .locals 0

    return-void
.end method

.method public hideKeyguard()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result v0

    return v0
.end method

.method public hideKeyguardImpl()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    const-string/jumbo v4, "StatusBar#hideKeyguard"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v5, 0x3eb

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method public hideRecentApps(ZZ)V
    .locals 0

    return-void
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "hide return to in call screen button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideReturnToInCallScreenButton()V

    return-void
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    return v0
.end method

.method protected inflateStatusBarWindow(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0d0102

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-void
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/RowInflaterTask;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$86;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$86;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    invoke-virtual {v1, v2, p2, p1, v3}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v7, :cond_0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const v2, 0x8ca0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Touch: rawY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDisabled1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDisabled2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mTracking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTracking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/GestureRecorder;->add(Landroid/view/MotionEvent;)V

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_3
    :goto_2
    return v6

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->CHATTY:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v7, :cond_1

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "panel: %s at (%f, %f) mDisabled1=0x%08x mDisabled2=0x%08x"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_2
.end method

.method public isBouncerShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceInVrMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrMode:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeyguardCurrentlySecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isLaunchTransitionFadingAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    return v0
.end method

.method public isLockscreenPublicMode(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "%s: current userid: %d, notification userid: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isPanelFullyCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isPulsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    return v0
.end method

.method public isQSFullyCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQSFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isSecurelyLocked(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardGoingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardGoingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(Z)V

    return-void
.end method

.method protected loadDimens(Landroid/content/res/Resources;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    const v1, 0x7f07042f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBarHeight(I)V

    :cond_0
    const v1, 0x7f0b0021

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxAllowedKeyguardNotifications:I

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "defineSlots"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$89;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$89;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method makeExpandedInvisible()V
    .locals 8

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mExpandedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onPanelCollapsed(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v7, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateFsgState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    invoke-virtual {p0, v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBrightnessListening(Z)V

    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Make expanded visible: expanded visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateFsgState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method protected makeStatusBarView()V
    .locals 40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->loadWhiteList()V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a01ea

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a01f0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v9}, Lcom/android/systemui/statusbar/NotificationLogger;->setUp(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a0150

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    const-class v4, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    new-instance v31, Lcom/android/systemui/statusbar/phone/StatusBar$43;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v4

    const-string/jumbo v5, "CollapsedStatusBarFragment"

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentManager;->beginTransaction()Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    const-string/jumbo v9, "CollapsedStatusBarFragment"

    const v10, 0x7f0a02b1

    invoke-virtual {v4, v10, v5, v9}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->replace(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->commit()I

    const-class v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$FastColorDrawable;

    const v9, 0x106000b

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-direct {v5, v9}, Lcom/android/systemui/statusbar/phone/StatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v28

    invoke-direct {v4, v0, v5, v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setVisualStabilityManager(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v39

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasNavigationBar="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v39, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar()V

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$44;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFullScreenGestureListener:Landroid/database/ContentObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "force_fsg_nav_bar"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFullScreenGestureListener:Landroid/database/ContentObserver;

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFullScreenGestureListener:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsFsgMode:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsRemoved:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPixelFormat:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationMenuClicker()Lcom/android/systemui/SwipeHelper$MenuPressListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMenuPressListener(Lcom/android/systemui/SwipeHelper$MenuPressListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateEmptyShadeView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateDismissView()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedContents:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a0044

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v5, 0x7f0a0046

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v5, 0x7f0a0045

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a014e

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardClockContainer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardClock:Lcom/android/keyguard/KeyguardClockContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a013e

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a0152

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v11, 0x7f0a016d

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v9, v10, v4, v5}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ImageView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v9, v0}, Lcom/android/systemui/SystemUIFactory;->createKeyguardWallpaperCarouselController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/LockScreenMagazineController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardWallpaperCarouselController(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$45;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a026e

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ScrimView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a026f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ScrimView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a0107

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/SystemUIFactory;->createScrimController(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v4, :cond_3

    new-instance v38, Lcom/android/systemui/statusbar/phone/StatusBar$46;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    invoke-interface/range {v38 .. v38}, Ljava/lang/Runnable;->run()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    const-class v4, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a0221

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a021c

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/qs/QSDetail;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a021b

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v27, :cond_5

    invoke-static/range {v27 .. v27}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentManager;->beginTransaction()Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/QSFragment;

    invoke-direct {v5}, Lcom/android/systemui/qs/QSFragment;-><init>()V

    const-string/jumbo v9, "QS"

    const v10, 0x7f0a0221

    invoke-virtual {v4, v10, v5, v9}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->replace(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->commit()I

    new-instance v4, Lcom/android/systemui/fragments/PluginFragmentListener;

    const-string/jumbo v5, "QS"

    const-class v9, Lcom/android/systemui/qs/QSFragment;

    const-class v10, Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v0, v27

    invoke-direct {v4, v0, v5, v9, v10}, Lcom/android/systemui/fragments/PluginFragmentListener;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4}, Lcom/android/systemui/fragments/PluginFragmentListener;->startListening()V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0, v9}, Lcom/android/systemui/SystemUIFactory;->createQSTileHost(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    new-instance v4, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    const-string/jumbo v4, "QS"

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$47;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/QSTileHost;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a0236

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$48;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$48;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/PowerManager;

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/systemui/events/ScreenOffEvent;

    invoke-direct {v4}, Lcom/android/systemui/events/ScreenOffEvent;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBusEvent(Lcom/android/systemui/events/ScreenOffEvent;)V

    :cond_7
    const-string/jumbo v4, "GestureWakeLock"

    const/16 v5, 0xa

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/Vibrator;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v33

    move-object/from16 v0, v33

    array-length v4, v0

    new-array v4, v4, [J

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/16 v32, 0x0

    :goto_1
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v32

    if-ge v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v5, v33, v32

    int-to-long v10, v5

    aput-wide v10, v4, v32

    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    :cond_8
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNavigationBar()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v29

    goto/16 :goto_0

    :cond_9
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, v28

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v17, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-object/from16 v18, v0

    move-object/from16 v13, v28

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    if-eqz v4, :cond_a

    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "fake_artwork"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFakeArtworkReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v21, "android.permission.DUMP"

    const/16 v22, 0x0

    move-object/from16 v17, v28

    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_a
    const-class v4, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/DemoModeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/DemoModeController;->addCallback(Ljava/lang/Object;)V

    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mToggleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v25, "com.android.SystemUI.permission.TIGGER_TOGGLE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    const-string/jumbo v4, "disableProfileBars"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ambientRatio"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public maybeEscalateHeadsUp()V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v6, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "converting a heads up to fullScreen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const v7, 0x8ca3

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v6, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V

    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "throw exception when sending full screen intent"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    return-void
.end method

.method public notifyFpAuthModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    return-void
.end method

.method protected notifyHeadsUpScreenOff()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/16 v3, 0xc0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v2, 0x7f110473

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method public onAnswerCall()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "on answer call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasAnswerCall:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManagerEx;->answerRingingCall()V

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "systemUI.answer"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameHandsFreeMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpNotification()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-virtual {v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->answerRingingCall()V

    goto :goto_0
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->needUpdateBadgeNum:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasLowPriorityStateUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onLowPriorityUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_2
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInCenterScreen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    return v2

    :cond_3
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFold()V

    return v2

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    const-string/jumbo v0, "click_back_button"

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackStatusBarCollapse(Ljava/lang/String;)V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected onBootCompleted()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sBootCompleted:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-virtual {v0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->init()V

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "boot complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/events/ScreenOffEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpScreenOff()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->makeReturnToInCallScreenButtonGone()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->stop(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/events/ScreenOnEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallScreenShowing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isCallScreenShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCallState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideReturnToInCallScreenButton()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->start(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->makeReturnToInCallScreenButtonVisible()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;->onDockedStackMinimizedChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 5

    const/4 v4, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartedGoingToSleep:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canCameraGestureBeLaunched(Z)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrateForCameraGesture()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    :goto_1
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dontAnimateBouncerChangesUntilNextFrame()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenTurningOn:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isScreenTurnedOn()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    goto :goto_1

    :cond_7
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    goto :goto_1
.end method

.method public onClosingFinished()V
    .locals 2

    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onPanelCollapsed(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFold()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->setFoldAnimating(Z)V

    :cond_1
    const-class v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->asyncUpdate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "configuration changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPreviousConfig:Landroid/content/res/Configuration;

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPreviousConfig:Landroid/content/res/Configuration;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPreviousConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v2, v2, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {v2, v3}, Landroid/content/res/MiuiConfiguration;->needRestartStatusBar(J)Z

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v2}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    if-eqz v1, :cond_4

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateDismissView()V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeFoldView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateFoldView()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/HeaderView;->themeChanged()V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->onConfigurationChanged()V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->setFoldAnimating(Z)V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCrossedThreshold(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    return-void
.end method

.method protected onDensityOrFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onDensityOrFontScaleChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateSignalClusters()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateDismissView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateClearAll()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateEmptyShadeView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onDensityOrFontScaleChanged()V

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->onDensityOrFontScaleChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->-wrap2(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    goto :goto_0
.end method

.method public onDragDownReset()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xbb

    invoke-virtual {v1, v2, v4, v3, v6}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_1
    return v5

    :cond_2
    return v6
.end method

.method public onEndCall()V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "on end call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->endCall()Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpNotification()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-virtual {v0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->endCall()V

    goto :goto_0
.end method

.method public onExitCall()V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "on exit call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpNotification()V

    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setExpanded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartedGoingToSleep:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelCurrentTouch()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$78;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$78;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInPinnedMode:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceWindowCollapsed(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$61;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$61;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateFsgState()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateFsgState()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setHeadsUpGoingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$62;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$62;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->sendExitFloatingIntent(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onInCallNotificationHide()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Lmiui/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_in_call_notification_floating"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onInCallNotificationShow()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$90;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$90;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$91;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$91;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVoipPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.miui.voip.action.CALL_STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_in_call_notification_floating"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasAnswerCall:Z

    return-void
.end method

.method public onKeyguardDone()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->clear()V

    return-void
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onKeyguardOccludedChanged(Z)V

    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return-void
.end method

.method protected onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    return-void
.end method

.method protected onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-void
.end method

.method protected onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$75;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$75;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setOnExpandedVisibleListener(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMenuPressed()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNotificationClear(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    return-void
.end method

.method public onPanelLaidOut()V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateRowStates()V

    :cond_0
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onScreenOff()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenTurningOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->onScreenTurnedOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenTurningOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onScreenTurningOn()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurningOn()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    :cond_0
    return-void
.end method

.method public onSilentModeChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQuietModeEnable:Z

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->isDNDEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsDNDEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSilentModeIcon()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->showNotification(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShouldPopup:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setQuietMode(Z)V

    goto :goto_0
.end method

.method public onSpacePressed()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v2

    :cond_0
    return v1
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartedGoingToSleep:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopFaceUnlock()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    return-void
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    :cond_1
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method protected onWorkChallengeChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isAnyProfilePublicMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$76;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$76;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$77;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$77;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    :cond_0
    return-void
.end method

.method panelsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpansionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method protected performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onNotificationClear(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$63;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$63;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$68;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$68;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$69;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$69;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$70;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$70;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    const/16 v0, 0x3fe

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method public recomputeDisableFlags(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(Z)V

    return-void
.end method

.method public refreshClockVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->refreshClockVisibility(ZZ)V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 15

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    move-result v12

    xor-int/lit8 v2, v12, 0x1

    :cond_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    :cond_1
    sget-boolean v12, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v10, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v13, "android.remoteInputHistory"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/CharSequence;

    :cond_2
    iget-object v12, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v5, v13

    invoke-static {v1, v5}, Landroid/app/NotificationCompat;->setRemoteInputHistory(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v12, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v12, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, v10, v12, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Z)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-eqz v11, :cond_5

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    iget-object v13, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    array-length v12, v8

    add-int/lit8 v12, v12, 0x1

    new-array v5, v12, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_0
    array-length v12, v8

    if-ge v4, v12, :cond_2

    add-int/lit8 v12, v4, 0x1

    aget-object v13, v8, v4

    aput-object v13, v5, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_7

    const-class v12, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    const-class v12, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-virtual {v12, v3}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->postExposeEventIfNeed(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_7
    if-eqz v3, :cond_8

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_8

    iget-object v12, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    if-eqz v3, :cond_9

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v13, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-interface {v12, v13}, Lcom/android/systemui/ForegroundServiceController;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    :cond_9
    if-eqz v3, :cond_a

    iget-object v12, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_a

    iget-object v12, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v13, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cleanUpViewState(Landroid/view/View;)V

    :cond_a
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleGroupSummaryRemoved(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v7

    const-string/jumbo v12, "StatusBar"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeNotification key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " old="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_c

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHasClearAllNotifications:Z

    if-nez v12, :cond_b

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAppBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeFold()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v3, :cond_e

    iget-object v12, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v12}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13, v9}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->remove(ILjava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    return-object v1
.end method

.method public requestNotificationUpdate()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method resumeSuspendedNavBarAutohide()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resumeSuspendedAutohide()V

    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v0

    :goto_0
    const-string/jumbo v6, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAreThereNotifications: N="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " any="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " clearable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v7, 0x7f0a01e9

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areLightsOn()Z

    move-result v6

    xor-int/lit8 v2, v6, 0x1

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    move v6, v3

    :goto_2
    if-eq v2, v6, :cond_2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz v2, :cond_6

    :goto_3
    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_7

    const/16 v3, 0x2ee

    :goto_4
    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v4, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_8

    move-object v3, v5

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->findAndUpdateMediaNotifications()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v6, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    const/16 v3, 0xfa

    goto :goto_4

    :cond_8
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$59;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$59;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    goto :goto_5
.end method

.method public setBarState(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBarState: illegal state, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_2
    if-ne p1, v3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeRemoteInputEntriesKeptUntilCollapsed()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDriveMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setStatusBarState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setStatusBarState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/FalsingManager;->setStatusBarState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStatusBarState(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStatusBarState(I)V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInDriveMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    goto :goto_0
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDarkMode:Z

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    return-void
.end method

.method protected setHeadsUpUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setUser(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSoftInputVisible:Z

    return-void
.end method

.method public setInteracting(IZ)V
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eq v1, p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr v1, p1

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->suspendAutohide()V

    :goto_2
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v1, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resumeSuspendedAutohide()V

    goto :goto_2
.end method

.method public setKeyguardFadingAway(JJJ)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v4, 0x78

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    iput-wide p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    add-long v2, p1, p5

    sub-long/2addr v2, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-lez v1, :cond_0

    move v0, v6

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    sub-long v2, p1, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardFadingAway(JJ)V

    return-void
.end method

.method public setLightsOn(Z)V
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLightsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object v3, p0

    move v5, v1

    move v6, v1

    move v7, v4

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllowLockscreenRemoteInput:Z

    return-void
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method protected setLockscreenUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->setCurrentUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationsShown([Ljava/lang/String;)V

    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    iget-object v0, p2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->criterion:Landroid/service/notification/SnoozeCriterionCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->criterion:Landroid/service/notification/SnoozeCriterionCompat;

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterionCompat;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/NotificationCompat;->snoozeNotification(Landroid/service/notification/NotificationListenerService;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->snoozeForMinutes:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/app/NotificationCompat;->snoozeNotification(Landroid/service/notification/NotificationListenerService;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setNotificationsShown([Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPanelExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelExpanded(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "clearing notification effects from setPanelExpanded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeRemoteInputEntriesKeptUntilCollapsed()V

    :cond_2
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardClock:Lcom/android/keyguard/KeyguardClockContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardClockContainer;->setImportantForAccessibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    move/from16 v0, p4

    not-int v2, v0

    and-int/2addr v2, v3

    and-int v5, p1, p4

    or-int v4, v2, v5

    xor-int v13, v4, v3

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v5, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v6, v9

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v21, 0x0

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    :cond_1
    const/high16 v2, 0x10000000

    and-int v2, v2, p1

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v5, -0x10000001

    and-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v2, :cond_d

    const/16 v18, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isForceImmersive()Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_4

    if-eqz v18, :cond_3

    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    :cond_3
    const/16 v18, 0x1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeStatusBarMode(II)I

    move-result v20

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_e

    const/16 v19, 0x1

    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_f

    const/16 v21, 0x1

    :goto_2
    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->onStatusBarModeChanged(I)V

    :cond_5
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarMode:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    const/4 v5, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v5}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    :cond_6
    if-nez v21, :cond_7

    if-eqz v19, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->scheduleAutohide()V

    :cond_9
    :goto_3
    const/high16 v2, 0x20000000

    and-int v2, v2, p1

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v5, -0x20000001

    and-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_c

    move/from16 p2, p1

    :cond_c
    move/from16 v17, p4

    move/from16 v15, p3

    move/from16 v7, p2

    move/from16 v12, v21

    move-object/from16 v14, p6

    move-object/from16 v16, p5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$64;

    move-object/from16 v6, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBar$64;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    const/high16 v5, 0x8000000

    const/high16 v6, -0x80000000

    const v7, 0x8000

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeNavigationBarMode(IIIII)I

    move-result v18

    goto/16 :goto_0

    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    goto :goto_3
.end method

.method public setWindowState(II)V
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_WINDOW_STATE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Status bar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    :cond_0
    return-void
.end method

.method public shouldHideNotificationIcons()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    return v0
.end method

.method public shouldHideNotifications(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldHideNotifications(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "StatusBar"

    const-string/jumbo v4, "No peeking: no huns or vr mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: filtered notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDreaming()Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: not in use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: suppressed by DND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: recent fullscreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: snoozed package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: unimportant notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUpGoingAway()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: status bar expanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: disabled panel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: accessible fullscreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "com.xiaomi.system.devicelock.locked"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_d

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: device locked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallScreenShowing(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    :goto_2
    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in call notification should peek: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_e
    const/4 v2, 0x1

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    goto :goto_2

    :cond_10
    invoke-static {p2}, Landroid/service/notification/StatusBarNotificationCompat;->isGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3}, Landroid/app/NotificationCompat;->suppressAlertingDueToGrouping(Landroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: suppressed due to group alert behavior: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_11
    invoke-static {p2}, Landroid/service/notification/StatusBarNotificationCompat;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No peeking: auto group summary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_12
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->enableFloatNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    return v3
.end method

.method public shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isEnableKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public showAssistDisclosure()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    :cond_0
    return-void
.end method

.method protected showBouncer()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    return-void
.end method

.method public showKeyguard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    return-void
.end method

.method public showKeyguardImpl()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFadeKeyguardWhenUnlockByGxzw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFadeKeyguardWhenUnlockByGxzw:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->finishKeyguardFadingAway()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :cond_3
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    return-void

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    goto :goto_1
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->showRecentApps(ZZ)V

    return-void
.end method

.method public showReturnToInCallScreenButton(Ljava/lang/String;J)V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "show return to in call screen button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    return-void
.end method

.method public showReturnToInCallScreenButtonIfNeed()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotificationHeadsUp(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-virtual {v0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v0

    if-ne v2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->silenceRinger()V

    :cond_1
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    return-void
.end method

.method public start()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget v3, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createBgHandler()Lcom/android/systemui/statusbar/phone/StatusBar$W;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->init()V

    new-instance v2, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOLEDScreenHelper:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    const-class v2, Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLogger;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const-class v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    const-class v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const-class v2, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSecurityManager:Lmiui/security/SecurityManager;

    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const-class v2, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    const-class v2, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const-class v2, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v2, v3}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mToggleManager:Lmiui/app/ToggleManager;

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-static {v2}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    new-instance v2, Lcom/android/internal/util/NotificationMessagingUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->registerContentObserver()V

    const-class v2, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLayoutDirection:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const/16 v2, 0x9

    new-array v6, v2, [I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/SystemUICompat;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v10, 0x6

    aget v10, v6, v10

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    const/4 v2, 0x1

    aget v11, v6, v2

    const/4 v2, 0x7

    aget v12, v6, v2

    const/16 v2, 0x8

    aget v13, v6, v2

    const/4 v14, -0x1

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v2, 0x2

    aget v2, v6, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->topAppWindowChanged(Z)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x3

    aget v10, v6, v3

    const/4 v3, 0x4

    aget v11, v6, v3

    const/4 v3, 0x5

    aget v3, v6, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v10, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v2, v3, v10}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardNotificationHelper:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    invoke-virtual {v2, v3, v10, v11}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x0

    aget v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const/4 v11, 0x2

    aget v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    const/4 v11, 0x3

    aget v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v10, v12

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getContextForUser(I)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContextForUser:Landroid/content/Context;

    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPreviousConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setHeadsUpUser(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/AnalyticsHelper;->registerReceiver(Landroid/content/Context;)V

    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "miui.intent.action.systemui.ENABLE_NOTIFICATIONS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEnableNotificationsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.android.systemui.permission.SELF"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateCurrentProfilesCache()V

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$39;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-static {v2}, Landroid/service/vr/IVrManagerCompat;->registerListener(Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHeadsUpSetting()V

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v2, v3, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameHandsFreeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGameModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationStyleObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandTopNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserFoldObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCloudDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotificationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserExperienceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiOptimizationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-boolean v2, Lcom/android/systemui/Constants;->SUPPORT_AOD:Z

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    const-class v2, Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->setHost(Lcom/android/systemui/doze/DozeHost;)V

    :cond_4
    new-instance v2, Lcom/android/systemui/recents/ScreenPinningRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    const-class v2, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ActivityStarterDelegate;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/ActivityStarterDelegate;->setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$40;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "hide_nav_bar"

    const/4 v10, 0x0

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "can_nav_bar_hide"

    const/4 v10, 0x0

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "force_immersive_nav_bar"

    const/4 v10, 0x0

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "music_in_white_list"

    const/4 v10, 0x0

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sysui_tuner_demo_on"

    const/4 v10, 0x0

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "doze_always_on"

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-static {v2, v3, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_mode"

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-static {v2, v3, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v26

    const/4 v2, -0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "doze_always_on"

    const/4 v10, -0x2

    move/from16 v0, v26

    invoke-static {v2, v3, v0, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "doze_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v2, v3, v10, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_6
    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "force_black"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlackObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForceBlackObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->enableNotificaitonIfNeed()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runInBackground()V

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/Divider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/Divider;->registerDockedStackExistsChangedListener(Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;)V

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/display/DisplayManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$41;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->dealWithRecordState()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mJobHelper:Lcom/android/systemui/analytics/JobHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/analytics/JobHelper;->startJob(Landroid/content/Context;)V

    const-class v2, Lcom/android/systemui/miui/ToastOverlayManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/ToastOverlayManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/android/systemui/miui/ToastOverlayManager;->setup(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void

    :catch_0
    move-exception v20

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Unable to register notification listener"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_1
    move-exception v22

    goto/16 :goto_0
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v0, p1, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$65;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/systemui/statusbar/phone/StatusBar$65;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$66;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/phone/StatusBar$66;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected startKeyguard()V
    .locals 9

    const-string/jumbo v0, "StatusBar#startKeyguard"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v6

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    new-instance v0, Lcom/android/keyguard/faceunlock/FaceUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v6

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/faceunlock/FaceUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceUnlockController:Lcom/android/keyguard/faceunlock/FaceUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceUnlockController:Lcom/android/keyguard/faceunlock/FaceUnlockController;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Lcom/android/keyguard/faceunlock/FaceUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFaceUnlockController:Lcom/android/keyguard/faceunlock/FaceUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$56;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$56;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$88;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$88;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {v4, v5, v5, p1}, Landroid/app/KeyguardManagerCompat;->createConfirmDeviceCredentialIntent(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.INDEX"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x54000000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/app/ActivityManagerCompat;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public stopWaitingForKeyguardExit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWaitingForKeyguardExit:Z

    return-void
.end method

.method suspendNavBarAutohide()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->suspendAutohide()V

    return-void
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3

    const/16 v0, 0x402

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    return-void
.end method

.method protected toggleSplitScreenMode(II)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v2, v4, v3, v5, p1}, Lcom/android/systemui/RecentsComponent;->dockTopTask(IILandroid/graphics/Rect;I)Z

    move-result v2

    return v2

    :cond_1
    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    if-eq p2, v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public topAppWindowChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLightsOn(Z)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "hiding"

    goto :goto_0
.end method

.method public updateClearAll()V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUpGoingAway()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissView(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateDisplaySize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    const-string/jumbo v1, "display"

    const-string/jumbo v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateExpandTopNotificationSetting()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_expand_top_notification"

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandTopNotification:Z

    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2, p4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0
.end method

.method protected updateKeyguardState(ZZ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "StatusBar#updateKeyguardState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v4, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStackScrollerState(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v1, :cond_7

    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v4, :cond_5

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 12

    const-string/jumbo v7, "StatusBar#updateMediaMetaData"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v7, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DEBUG_MEDIA: updating album art for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " metadata="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " metaDataChanged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v7, :cond_3

    const/4 v1, 0x0

    :cond_3
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v6

    :goto_0
    const/4 v7, 0x0

    if-eqz v7, :cond_a

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_4

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    if-eqz v7, :cond_5

    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v7, :cond_b

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "DEBUG_MEDIA: Fading out album artwork"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    if-eqz v6, :cond_13

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_9
    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    xor-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    if-eqz p2, :cond_10

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v8, 0x3b03126f    # 0.002f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    const/4 p1, 0x1

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v7, :cond_c

    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "DEBUG_MEDIA: Fading in album artwork"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz p1, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    if-eqz v7, :cond_12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x416fffffe0000000L    # 1.6777215E7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/high16 v8, -0x1000000

    or-int v3, v8, v7

    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "DEBUG_MEDIA: setting new color: 0x%08x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA:Z

    if-eqz v7, :cond_f

    const-string/jumbo v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DEBUG_MEDIA: Crossfading album artwork from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_2

    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    goto/16 :goto_3

    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_13
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const v8, 0x3b03126f    # 0.002f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/phone/StatusBar$60;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$60;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2
.end method

.method public updateNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->filterNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBgHandler:Landroid/os/Handler;

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isHideSensitiveByAppLock(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iput-object p1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {p1, v4}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needRestatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->needUpdateBadgeNum:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->wrapNotificationEvent(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateIcons(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v6

    invoke-interface {v5, p1, v6}, Lcom/android/systemui/ForegroundServiceController;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->allowGroupShowOnKeyguardAgain(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const-string/jumbo v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_5

    const-string/jumbo v5, ""

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    const-class v5, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-interface {v5, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitor;->notifyNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    return-void

    :cond_5
    const-string/jumbo v5, "not "

    goto :goto_0
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "updateNotificationRanking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationViewsOnly()V

    return-void
.end method

.method public updateNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationViewsOnly()V

    return-void
.end method

.method protected updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getHiddenText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method updateResources(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->loadDimens(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->updateResources(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->updateResources(Z)V

    :cond_3
    return-void
.end method

.method protected updateRowStates()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    if-eqz v9, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v7

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxDisplayedNotifications(I)V

    new-instance v13, Ljava/util/Stack;

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    add-int/lit8 v6, v2, -0x1

    :goto_1
    if-ltz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v0, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v18, v0

    if-nez v18, :cond_2

    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Ljava/util/Stack;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_f

    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v9, :cond_8

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    :goto_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowAmbient(Z)V

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_a

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v18

    xor-int/lit8 v14, v18, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v18

    if-nez v18, :cond_4

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setHasShownAfterUnlock(Z)V

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v11

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowLockscreenNotifications:Z

    move/from16 v18, v0

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_6

    :cond_5
    if-eqz v9, :cond_b

    xor-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_b

    :cond_6
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_7
    :goto_5
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_6
    if-ltz v6, :cond_3

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    if-nez v16, :cond_9

    xor-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_9

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemExpandedIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    goto/16 :goto_3

    :cond_9
    const/16 v18, 0x0

    goto :goto_7

    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    :cond_b
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/16 v17, 0x1

    :goto_8
    if-eqz v17, :cond_c

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_c
    if-nez v4, :cond_7

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_7

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    xor-int/lit8 v20, v11, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    :cond_e
    const/16 v17, 0x0

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    if-nez v16, :cond_10

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setNoVisibleNotifications(Z)V

    return-void

    :cond_10
    const/16 v18, 0x0

    goto :goto_9
.end method

.method public updateStackScrollerState(ZZ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isAnyProfilePublicMode()Z

    move-result v2

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateStackScrollerState() publicMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",isKeyguardShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isExpandingEnabled(Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateStatusBarPading()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v1, v3, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPadding(IIII)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInfo:Landroid/view/DisplayInfo;

    invoke-static {p0, v2}, Lcom/android/systemui/DisplayCutoutCompat;->getSafeInsetLeft(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/DisplayInfo;)I

    move-result v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInfo:Landroid/view/DisplayInfo;

    invoke-static {p0, v2}, Lcom/android/systemui/DisplayCutoutCompat;->getSafeInsetRight(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/DisplayInfo;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected updateVisibleToUser()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userActivity()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_show_notifications"

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->adminAllowsKeyguardFeature(II)Z

    move-result v1

    if-eqz v2, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->adminAllowsKeyguardFeature(II)Z

    move-result v1

    if-eqz v2, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userSwitched(I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setHeadsUpUser(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationsOnDensityOrFontScaleChanged()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMiuiOptimizationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeupForNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandTopNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationShade()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearCurrentMediaNotification()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenUser(I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.extra_update_request_first_time"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "doze_always_on"

    invoke-static {v2, v3, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_mode"

    invoke-static {v2, v3, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "doze_always_on"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "doze_enabled"

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method

.method vibrate()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 7

    const/4 v4, -0x1

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-nez p1, :cond_0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "com.android.systemui:NODOZE"

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget v3, v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onScreenOnFromTouch()V

    :cond_0
    return-void
.end method
