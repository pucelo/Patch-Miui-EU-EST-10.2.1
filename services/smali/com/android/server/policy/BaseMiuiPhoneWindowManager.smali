.class public abstract Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field private static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final CAMERA_POWER_DOUBLE_TAP_MIN_TIME_MS:J = 0x0L

.field private static final COMBINE_VOLUME_KEY_DELAY_TIME:I = 0x96

.field private static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field private static final DOUBLE_TAP_HOME_RECENT_PANEL:I = 0x1

.field private static final ENABLE_HOME_KEY_DOUBLE_TAP_INTERVAL:I = 0x12c

.field private static final ENABLE_HOME_KEY_PRESS_INTERVAL:I = 0x12c

.field private static final ENABLE_VOLUME_KEY_PRESS_COUNTS:I = 0x2

.field private static final ENABLE_VOLUME_KEY_PRESS_INTERVAL:I = 0x12c

.field protected static final INTERCEPT_EXPECTED_RESULT_GO_TO_SLEEP:I = -0x1

.field protected static final INTERCEPT_EXPECTED_RESULT_NONE:I = 0x0

.field protected static final INTERCEPT_EXPECTED_RESULT_WAKE_UP:I = 0x1

.field private static final LAUNCH_SOS_BY_PRESS_POWER_KEY_CONTINUOUSLY:I = 0x5

.field private static final LONG_PRESS_POWER_KEY_TIMEOUT:J = 0xbb8L

.field private static final LONG_PRESS_POWER_LAUNCH_XIAOAI_DEF:I

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_NONE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_PAY:I = 0x2

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_STREET_SNAP:I = 0x1

.field private static final LONG_PRESS_VOLUME_TIME:I = 0x3e8

.field private static final MSG_COMBINE_VOLUME_KEY_DELAY_TIME:I = 0xbb8

.field private static final NAVIGATION_BAR_WINDOW_LOADED:Ljava/lang/String; = "navigation_bar_window_loaded"

.field private static final PERMISSION_INTERNAL_GENERAL_API:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field protected static final REASON_FP_DPAD_CENTER_WAKEUP:Ljava/lang/String; = "miui.policy:FINGERPRINT_DPAD_CENTER"

.field private static final SCREEN_KEY_LONG_PRESS_VOLUME_DOWN:Ljava/lang/String; = "screen_key_long_press_volume_down"

.field private static final SHORTCUT_BACK_POWER:I

.field private static final SHORTCUT_HOME_POWER:I

.field private static final SHORTCUT_MENU_POWER:I

.field private static final SHORTCUT_SCREENSHOT_ANDROID:I

.field private static final SHORTCUT_SCREENSHOT_MIUI:I

.field private static final SHORTCUT_SCREENSHOT_SINGLE_KEY:I

.field private static final SHORTCUT_UNLOCK:I

.field protected static final SUPPORT_EDGE_TOUCH_VOLUME:Z

.field private static final SYSTEM_SETTINGS_VR_MODE:Ljava/lang/String; = "vr_mode"

.field private static final SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR:I = 0x10

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final sScreenRecorderKeyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sVoiceAssistKeyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final talkBackServiceName:Landroid/content/ComponentName;


# instance fields
.field mAccessibilityShortcutOnLockScreen:Z

.field private mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field private mCameraIntent:Landroid/content/Intent;

.field mCameraKeyWakeScreen:Z

.field private mCurrentUserId:I

.field mDoubleClickPowerKey:Ljava/lang/String;

.field private mDoubleTapOnHomeBehavior:I

.field mDpadCenterDown:Z

.field private mForbidFullScreen:Z

.field protected mFpNavEventNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrontFingerprintSensor:Z

.field protected mFsgDisableHwKeys:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field mHaveBankCard:Z

.field mHaveTranksCard:Z

.field mHomeConsumed:Z

.field mHomeDoubleClickPending:Z

.field private final mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDownAfterDpCenter:Z

.field private mInputMethodWindowVisibleHeight:I

.field private mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mIsVRMode:Z

.field mKeyCombinationPowerBack:Ljava/lang/String;

.field mKeyCombinationPowerHome:Ljava/lang/String;

.field mKeyCombinationPowerMenu:Ljava/lang/String;

.field protected mKeyLongPressTimeout:I

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mKeyguardOnWhenHomeDown:Z

.field private mLastPowerDown:J

.field mLongPressBackKey:Ljava/lang/String;

.field mLongPressHomeKey:Ljava/lang/String;

.field mLongPressMenuKey:Ljava/lang/String;

.field mLongPressMenuKeyWhenLock:Ljava/lang/String;

.field mLongPressPowerKey:Ljava/lang/String;

.field private mLongPressVolumeDownBehavior:I

.field mMikeymodeEnabled:Z

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field protected mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

.field mNavBarHeight:I

.field mNavBarHeightLand:I

.field mNavBarWidth:I

.field private mNfcIntent:Landroid/content/Intent;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mPressPowerKeyCount:I

.field private mPressToAppSwitch:Z

.field private mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field private final mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRequestShowMenu:Z

.field protected mScreenOffReason:I

.field mScreenRecordeEnablekKeyEventReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenRecorderEnabled:Z

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

.field private mShortcutPressing:I

.field mShortcutServiceIsTalkBack:Z

.field private mShortcutTriggered:Z

.field mSingleKeyUse:Z

.field private mSmartCoverManager:Lmiui/util/SmartCoverManager;

.field private mStatusBarDisableToken:Landroid/os/Binder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarVisible:Z

.field private mSuperWaitingKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSupportFsg:Z

.field protected mSupportTapFingerprintSensorToHome:Z

.field private mSystemKeyPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTalkBackIsOpened:Z

.field mTestModeEnabled:Z

.field mThreeGestureDown:Ljava/lang/String;

.field private mTorchEnabled:Z

.field mTrackballWakeScreen:Z

.field private final mTurnOffTorch:Ljava/lang/Runnable;

.field private mVoiceAssistEnabled:Z

.field private mVolumeButtonPrePressedTime:J

.field private mVolumeButtonPressedCount:J

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyPressed:Z

.field private mVolumeDownKeyTime:J

.field mVolumeKeyLaunchCamera:Z

.field private mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVolumeKeyWakeScreen:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyPressed:Z

.field private mVolumeUpKeyTime:J

.field private mWifiOnly:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWindowFlagBinder:Landroid/os/Binder;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LONG_PRESS_POWER_LAUNCH_XIAOAI_DEF:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic -get17()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/provider/SettingsStringUtil$SettingStringHelper;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mForbidFullScreen:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setScreenRecorderEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeApp(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchAssistAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchVoiceAssistant(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeTalkBack()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0xbb

    const/4 v6, 0x3

    const/16 v5, 0x19

    const/4 v4, 0x4

    const/16 v3, 0x1a

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_HOME_POWER:I

    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_BACK_POWER:I

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MENU_POWER:I

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    const-string/jumbo v0, "support_edge_touch_volume"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    const-string/jumbo v2, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;

    const-string/jumbo v0, "long_press_power_launch_xiaoai_def"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LONG_PRESS_POWER_LAUNCH_XIAOAI_DEF:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sVoiceAssistKeyEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sVoiceAssistKeyEventList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    new-instance v0, Lmiui/util/SmartCoverManager;

    invoke-direct {v0}, Lmiui/util/SmartCoverManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.jeejen.family.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.mihomemanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecordeEnablekKeyEventReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1c

    const/4 v1, 0x1

    :goto_b
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    const/4 v0, 0x1

    :goto_17
    xor-int v2, v1, v0

    xor-int/lit8 v3, v2, 0x1

    return v3

    :cond_1c
    const/4 v1, 0x0

    goto :goto_b

    :cond_1e
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "close_talkback"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private closeApp(Z)Z
    .registers 22

    if-eqz p1, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_6
    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    if-nez v17, :cond_16

    :cond_e
    const/16 v17, 0x0

    return v17

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    :cond_16
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_30

    const/16 v17, 0x63

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_43

    :cond_30
    const/16 v17, 0x3e8

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_40

    const/16 v17, 0x7cf

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_43

    :cond_40
    const/16 v17, 0x0

    return v17

    :cond_43
    const/4 v15, 0x0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    :try_start_5e
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    if-ltz v12, :cond_9b

    new-instance v9, Landroid/content/ComponentName;

    add-int/lit8 v17, v12, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v9, v13, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v9, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_9a} :catch_c6

    move-result-object v15

    :cond_9b
    :goto_9b
    :try_start_9b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v13, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_b0} :catch_d5

    move-result-object v15

    :cond_b1
    :goto_b1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b8

    move-object v15, v13

    :cond_b8
    const-string/jumbo v17, "com.miui.home"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e4

    const/16 v17, 0x1

    return v17

    :catch_c6
    move-exception v10

    const-string/jumbo v17, "WindowManager"

    const-string/jumbo v18, "NameNotFoundException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9b

    :catch_d5
    move-exception v10

    const-string/jumbo v17, "WindowManager"

    const-string/jumbo v18, "NameNotFoundException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b1

    :cond_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const v19, 0x11090075

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    const/16 v17, 0x1

    return v17

    :cond_11f
    :try_start_11f
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_138} :catch_16f

    :goto_138
    const-string/jumbo v17, "key shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v4, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const v19, 0x11090074

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    const/16 v17, 0x1

    return v17

    :catch_16f
    move-exception v11

    const-string/jumbo v17, "WindowManager"

    const-string/jumbo v18, "RemoteException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_138
.end method

.method private closeTalkBack()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    invoke-virtual {v1}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    return-void
.end method

.method private closeTorchWhenScreenOff(Z)Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v0, :cond_e

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    invoke-direct {p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method private forceLayoutHideNavigation()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceLayoutHideNavigation(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    return v1

    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6
.end method

.method private forceLayoutHideNavigation(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/CustomizeUtil;->forceLayoutHideNavigation(Ljava/lang/String;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    if-nez v0, :cond_3c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string/jumbo v1, "ShowCameraWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string/jumbo v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.camera"

    const-string/jumbo v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3c
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_18

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const/4 v0, 0x2

    return v0

    :sswitch_7
    const/4 v0, 0x4

    return v0

    :sswitch_9
    const/16 v0, 0x8

    return v0

    :sswitch_c
    const/16 v0, 0x10

    return v0

    :sswitch_f
    const/16 v0, 0x20

    return v0

    :sswitch_12
    const/16 v0, 0x40

    return v0

    :sswitch_15
    const/16 v0, 0x80

    return v0

    :sswitch_data_18
    .sparse-switch
        0x3 -> :sswitch_9
        0x4 -> :sswitch_c
        0x18 -> :sswitch_15
        0x19 -> :sswitch_12
        0x1a -> :sswitch_f
        0x52 -> :sswitch_5
        0xbb -> :sswitch_7
    .end sparse-switch
.end method

.method private getNfcIntent()Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    if-nez v0, :cond_23

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .registers 3

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    if-nez v0, :cond_16

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .registers 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_a

    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z

    :cond_a
    return-void
.end method

.method private handleKeyCombination()Z
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-ne v1, v2, :cond_c

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_d

    :cond_c
    return v3

    :cond_d
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_HOME_POWER:I

    if-ne v1, v2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->stopLockTaskMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    const-string/jumbo v2, "key_combination_power_home"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_22
    :goto_22
    return v0

    :cond_23
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_BACK_POWER:I

    if-ne v1, v2, :cond_39

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    const-string/jumbo v2, "key_combination_power_back"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_22

    :cond_39
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MENU_POWER:I

    if-ne v1, v2, :cond_4f

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    const-string/jumbo v2, "key_combination_power_menu"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_22

    :cond_4f
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    if-ne v1, v2, :cond_63

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_63

    const-string/jumbo v1, "screen_shot"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_22

    :cond_63
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    if-ne v1, v2, :cond_75

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_75

    const-string/jumbo v1, "screen_shot"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_22

    :cond_75
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-eq v1, v2, :cond_96

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_22

    :cond_96
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    const/4 v0, 0x1

    goto :goto_22
.end method

.method private inFingerprintEnrolling()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    :try_start_e
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings.NewFingerprintInternalActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_29

    move-result v3

    if-eqz v3, :cond_33

    return v6

    :catch_29
    move-exception v1

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    return v5
.end method

.method private injectEvent(I)V
    .registers 18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-wide v6, v2

    move-wide v8, v2

    move/from16 v11, p1

    invoke-direct/range {v5 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private interceptAccessibilityShortcutChord(Z)V
    .registers 10

    const-wide/16 v6, 0x96

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTalkBackIsOpened:Z

    if-eqz v2, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_41

    iget-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_41

    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutServiceIsTalkBack:Z

    if-eqz v2, :cond_31

    if-eqz p1, :cond_41

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutOnLockScreen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_41

    :cond_31
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v4, "close_talkback"

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_41
    return-void
.end method

.method private interceptPowerKey(Landroid/view/KeyEvent;Z)Z
    .registers 19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    const/16 v12, 0x1a

    if-eq v11, v12, :cond_10

    :cond_e
    const/4 v11, 0x0

    return v11

    :cond_10
    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeTorchWhenScreenOff(Z)Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastPowerDown:J

    sub-long v2, v12, v14

    const-wide/16 v12, 0x12c

    cmp-long v11, v2, v12

    if-gez v11, :cond_dc

    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-lez v11, :cond_dc

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    const/4 v12, 0x2

    if-gt v11, v12, :cond_59

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    if-eqz v11, :cond_59

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    const-string/jumbo v12, "none"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_59

    const/4 v7, 0x1

    move/from16 v6, p2

    :cond_59
    :goto_59
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastPowerDown:J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_91

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isSosEnable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_91

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInSosMode(Landroid/content/Context;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_91

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "miui.intent.action.LAUNCH_SOS"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "com.android.settings"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    :cond_91
    if-eqz v7, :cond_d9

    const-string/jumbo v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Power button double tap gesture detected, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ". Interval="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "launch_camera"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    :cond_d9
    :goto_d9
    if-nez v6, :cond_137

    :goto_db
    return v5

    :cond_dc
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    goto/16 :goto_59

    :cond_e3
    const-string/jumbo v11, "turn_on_torch"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_117

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v11, :cond_111

    if-eqz v10, :cond_115

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v11

    if-nez v11, :cond_113

    const/4 v9, 0x1

    :goto_103
    if-eqz v9, :cond_d9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    xor-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    goto :goto_d9

    :cond_111
    const/4 v9, 0x1

    goto :goto_103

    :cond_113
    const/4 v9, 0x0

    goto :goto_103

    :cond_115
    const/4 v9, 0x0

    goto :goto_103

    :cond_117
    const-string/jumbo v11, "mi_pay"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v11, "event_source"

    const-string/jumbo v12, "double_click_power"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    goto :goto_d9

    :cond_137
    const/4 v5, 0x1

    goto :goto_db
.end method

.method private isAudioActive()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v4, 0x4

    if-ge v2, v4, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_24

    const/4 v4, 0x1

    if-ne v4, v1, :cond_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1e
    invoke-static {v1, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_24
    return v0
.end method

.method private isInCallScreenShowing()Z
    .registers 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2d
    return v2

    :cond_2e
    move v2, v3

    goto :goto_2d
.end method

.method private static isInSosMode(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_is_in_miui_sos_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private isLockDeviceWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private isNfcEnable(Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    const-string/jumbo v1, "sagit"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "jason"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    return v0

    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20

    :cond_23
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    :cond_2a
    return v0
.end method

.method private static isSosEnable(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_miui_sos_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private isTrackInputEvenForScreenRecorder(Landroid/view/KeyEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private isTrackInputEventForVoiceAssist(Landroid/view/KeyEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sVoiceAssistKeyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private launchApp(Landroid/content/Intent;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    const/high16 v1, 0x10000000

    :try_start_a
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_14} :catch_16

    const/4 v1, 0x1

    return v1

    :catch_16
    move-exception v0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "ActivityNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private launchAssistAction(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v1, "assist"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3f

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    :goto_3d
    const/4 v1, 0x1

    return v1

    :cond_3f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3d
.end method

.method private launchRecentPanel()Z
    .registers 6

    const/4 v4, 0x1

    const-string/jumbo v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_13
    const/4 v2, 0x0

    return v2

    :cond_15
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v2, :cond_40

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Ignoring recent apps button; there\'s a ringing incoming call."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanelInternal()V

    return v4
.end method

.method private launchVoiceAssistant(Ljava/lang/String;)Z
    .registers 13

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v6

    if-nez v6, :cond_8

    return v10

    :cond_8
    :try_start_8
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ASSIST"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "voice_assist_start_from_key"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x10000

    const/4 v9, 0x0

    invoke-interface {v6, v5, v7, v8, v9}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1109005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v4, :cond_5f

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_5f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_5f

    const/4 v6, 0x1

    return v6

    :cond_5f
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "launchVoiceAssistant startAcitvity"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_6f} :catch_87
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_6f} :catch_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_6f} :catch_71

    move-result v6

    return v6

    :catch_71
    move-exception v2

    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "IllegalStateException"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7b
    return v10

    :catch_7c
    move-exception v3

    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "SecurityException"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    :catch_87
    move-exception v1

    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    .registers 6

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method

.method private markKeyPressAndHandleKeyCombin(IZ)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    :cond_9
    invoke-static {p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    if-eqz p2, :cond_20

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    :goto_19
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleKeyCombination()Z

    move-result v1

    if-eqz v1, :cond_27

    return v4

    :cond_20
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_19

    :cond_27
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_3b

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    return v4

    :cond_3b
    return v3
.end method

.method private markShortcutTriggered()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    return-void
.end method

.method private originalCanHideNavigationBar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method private playSoundEffect(IIZI)V
    .registers 6

    if-eqz p3, :cond_1b

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1b

    if-nez p4, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    sparse-switch p2, :sswitch_data_20

    :cond_1b
    :goto_1b
    return-void

    :sswitch_1c
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->playSoundEffect()Z

    goto :goto_1b

    :sswitch_data_20
    .sparse-switch
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1c
        0x52 -> :sswitch_1c
        0x54 -> :sswitch_1c
        0xbb -> :sswitch_1c
    .end sparse-switch
.end method

.method private playSoundEffect()Z
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/4 v1, 0x1

    return v1
.end method

.method private postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    const/4 v2, 0x0

    return v2

    :cond_12
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "shortcut"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long v4, p2

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3
.end method

.method private postKeyLongPress(IZ)V
    .registers 6

    sparse-switch p1, :sswitch_data_7a

    :goto_3
    return-void

    :sswitch_4
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    if-nez v0, :cond_17

    const-string/jumbo v0, "capricorn"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_17
    if-eqz p2, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_home_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_3

    :sswitch_25
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_back_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_3

    :sswitch_30
    if-eqz p2, :cond_54

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_menu_key_when_lock"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_3

    :cond_54
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-nez v0, :cond_64

    const-string/jumbo v0, "show_menu"

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_menu_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_3

    :sswitch_6f
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_power_launch_xiaoai"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_3

    :sswitch_data_7a
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_25
        0x1a -> :sswitch_6f
        0x52 -> :sswitch_30
        0xbb -> :sswitch_30
    .end sparse-switch
.end method

.method private preloadRecentApps()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentAppsInternal()V

    return-void
.end method

.method private removeKeyFunction(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private removeKeyLongPress(IZ)V
    .registers 4

    sparse-switch p1, :sswitch_data_22

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_a
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_10
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1b
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    goto :goto_3

    nop

    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x1a -> :sswitch_1b
        0x52 -> :sswitch_10
        0xbb -> :sswitch_10
    .end sparse-switch
.end method

.method private resetKeyStatus()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return-void
.end method

.method private saveWindowTypeLayer(Landroid/content/Context;)V
    .registers 11

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v5, 0x7d0

    const/16 v6, 0x7d1

    const/16 v7, 0x7dd

    filled-new-array {v5, v6, v7}, [I

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    :goto_11
    if-ge v5, v6, :cond_31

    aget v2, v4, v5

    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v7, :cond_23

    :try_start_1c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_23} :catch_26

    :cond_23
    :goto_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :catch_26
    move-exception v0

    const-string/jumbo v7, "WindowManager"

    const-string/jumbo v8, "JSONException"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :cond_31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "window_type_layer"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private sendKeyEventBroadcast(Landroid/view/KeyEvent;)V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.SCREEN_RECORDER_TRACK_KEYEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.screenrecorder"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "keycode"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isdown"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendOthersBroadcast(ZZZILandroid/view/KeyEvent;)Z
    .registers 19

    if-eqz p1, :cond_d2

    if-eqz p2, :cond_2c

    xor-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_2c

    const/16 v11, 0x1a

    move/from16 v0, p4

    if-eq v0, v11, :cond_14

    const/16 v11, 0x19

    move/from16 v0, p4

    if-ne v0, v11, :cond_9e

    :cond_14
    :goto_14
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "miui.intent.action.KEYCODE_EXTERNAL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p5

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    :cond_2c
    const/16 v11, 0x1a

    move/from16 v0, p4

    if-ne v0, v11, :cond_b8

    const/4 v10, 0x1

    :goto_33
    if-nez v10, :cond_44

    if-eqz p3, :cond_44

    const/16 v11, 0x19

    move/from16 v0, p4

    if-eq v0, v11, :cond_43

    const/16 v11, 0x18

    move/from16 v0, p4

    if-ne v0, v11, :cond_bb

    :cond_43
    :goto_43
    const/4 v10, 0x1

    :cond_44
    if-eqz v10, :cond_53

    iget-boolean v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_53

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_53

    invoke-virtual {p0, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V

    :cond_53
    const/16 v11, 0x19

    move/from16 v0, p4

    if-eq v0, v11, :cond_5f

    const/16 v11, 0x18

    move/from16 v0, p4

    if-ne v0, v11, :cond_d0

    :cond_5f
    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "remote_control_proc_name"

    invoke-static {v4, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "remote_control_pkg_name"

    invoke-static {v4, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_d0

    if-eqz v6, :cond_d0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c2

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "miui.intent.action.REMOTE_CONTROL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p5

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    const/4 v11, 0x1

    return v11

    :cond_9e
    const/16 v11, 0x18

    move/from16 v0, p4

    if-eq v0, v11, :cond_14

    const/16 v11, 0xa4

    move/from16 v0, p4

    if-eq v0, v11, :cond_14

    const/16 v11, 0x55

    move/from16 v0, p4

    if-eq v0, v11, :cond_14

    const/16 v11, 0x4f

    move/from16 v0, p4

    if-ne v0, v11, :cond_2c

    goto/16 :goto_14

    :cond_b8
    const/4 v10, 0x0

    goto/16 :goto_33

    :cond_bb
    const/16 v11, 0xa4

    move/from16 v0, p4

    if-ne v0, v11, :cond_44

    goto :goto_43

    :cond_c2
    const-string/jumbo v11, "remote_control_proc_name"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v11, "remote_control_pkg_name"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d0
    :goto_d0
    const/4 v11, 0x0

    return v11

    :cond_d2
    const/16 v11, 0x1a

    move/from16 v0, p4

    if-ne v0, v11, :cond_d0

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    goto :goto_d0
.end method

.method public static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v5, "count_event"

    const-string/jumbo v4, "com.miui.gallery"

    const-string/jumbo v0, "com.miui.gallery.intent.action.SEND_STAT"

    const-string/jumbo v3, "stat_type"

    const-string/jumbo v1, "category"

    const-string/jumbo v2, "event"

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "stat_type"

    const-string/jumbo v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendVoiceAssistKeyEventBroadcast(Landroid/view/KeyEvent;)V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.VOICE_ASSIST_TRACK_KEYEVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.voiceassist"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "keycode"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isdown"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setScreenRecorderEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    return-void
.end method

.method private setStatusBarInFullscreen(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_16

    if-eqz p1, :cond_e

    const/high16 v2, -0x80000000

    :cond_e
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string/jumbo v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_1e

    :cond_16
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_2b

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_16

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private setTorch(Z)Z
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method private shouldInterceptHeadSetHookKey(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    if-eqz v1, :cond_31

    const/16 v1, 0x4f

    if-ne p1, v1, :cond_31

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MIKEY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.miclick"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_action"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key_event_time"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method private shouldInterceptKey(IZI)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "VR mode drop all keys."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    const-string/jumbo v0, "sys.in_shutdown_progress"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_23

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "this device is being shut down, ignore key event."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_23
    if-nez p2, :cond_36

    const/4 v0, 0x4

    if-eq v0, p1, :cond_2c

    const/16 v0, 0x52

    if-ne v0, p1, :cond_36

    :cond_2c
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Drop back or menu key when screen is off"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_36
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFsgDisableHwKeys:Z

    if-eqz v0, :cond_5b

    const/16 v2, 0x40

    and-int v0, v2, p3

    if-ne v0, v2, :cond_5b

    const/4 v0, 0x3

    if-eq v0, p1, :cond_52

    const/4 v0, 0x4

    if-eq v0, p1, :cond_52

    const/16 v0, 0x52

    if-eq v0, p1, :cond_52

    const/16 v0, 0xbb

    if-ne v0, p1, :cond_5b

    :cond_52
    const-string v0, "WindowManager"

    const-string v1, "Drop navigation keys when fsgestures are on"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_5b
    return v1
.end method

.method private showMenu()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string/jumbo v1, "virtual_key_longpress"

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->injectEvent(I)V

    return v2
.end method

.method private startCameraProcess()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.camera"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v1

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "IllegalAccessException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private streetSnap(ZIZLandroid/view/KeyEvent;)V
    .registers 9

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    if-nez v1, :cond_4a

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4a

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-eq p2, v1, :cond_16

    const/16 v1, 0x19

    if-ne p2, v1, :cond_4b

    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.CAMERA_KEY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    if-eqz v0, :cond_4a

    const-string/jumbo v1, "com.android.camera"

    const-string/jumbo v2, "com.android.camera.snap.SnapKeyReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key_action"

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key_event_time"

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4a
    return-void

    :cond_4b
    if-eqz p3, :cond_1e

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_1e

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1e
.end method


# virtual methods
.method protected abstract callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_10

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_10

    return v2

    :cond_10
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    return v1
.end method

.method protected canHideNavigationBar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_f

    return v6

    :cond_f
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_16

    return v6

    :cond_16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    return v4

    :cond_30
    return v6
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "BaseMiuiPhoneWindowManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInputMethodWindowVisibleHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrontFingerprintSensor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportTapFingerprintSensorToHome="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOffReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBarVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsStatusBarVisibleInFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasCameraFlash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTorchEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenRecorderEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVoiceAssistEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWifiOnly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KeyPress"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mKeyPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mShortcutPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_MENU KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x52

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_APP_SWITCH KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_HOME KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_BACK KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_POWER KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_VOLUME_DOWN KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KEYCODE_VOLUME_UP KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "ElSE KEYCODE KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SHORTCUT_HOME_POWER="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_HOME_POWER:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SHORTCUT_BACK_POWER="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_BACK_POWER:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SHORTCUT_MENU_POWER="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MENU_POWER:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SHORTCUT_SCREENSHOT_ANDROID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SHORTCUT_SCREENSHOT_MIUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SHORTCUT_UNLOCK="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortcutTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDpadCenterDown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDpadCenterDown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHomeDownAfterDpCenter="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "KeyResponseSetting"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPressToAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMikeymodeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTrackballWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeKeyLaunchCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTestModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleClickPowerKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mThreeGestureDown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressHomeKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressMenuKeyWhenLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressBackKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressPowerKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyCombinationPowerHome="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyCombinationPowerMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyCombinationPowerBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenButtonsDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeButtonPrePressedTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeButtonPressedCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveBankCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveTranksCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressVolumeDownBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsVRMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTalkBackIsOpened="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTalkBackIsOpened:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortcutServiceIsTalkBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutServiceIsTalkBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v0, p1, p2}, Lmiui/util/SmartCoverManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreenAfterBoot()V

    const-string/jumbo v0, "ro.radio.noril"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    invoke-virtual {v0, v1}, Lmiui/util/SmartCoverManager;->enableLidAfterBoot(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    :cond_19
    return-void
.end method

.method protected abstract finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public finishLayoutLw()V
    .registers 6

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishLayoutLw()V

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurBottom:I

    sub-int v0, v2, v3

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    if-eq v2, v0, :cond_3f

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "input method visible height changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "miui.intent.extra.input_method_visible_height"

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 8

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eq v3, v4, :cond_35

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V

    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    :goto_2d
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    const-string/jumbo v5, "system"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_35} :catch_39

    :cond_35
    :goto_35
    return v0

    :cond_36
    const/16 v3, 0x100

    goto :goto_2d

    :catch_39
    move-exception v1

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "RemoteException when disable status bar visible"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_35
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    goto :goto_23
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_17

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_17
    return-void
.end method

.method protected forceShowNavigationBar()Z
    .registers 2

    invoke-static {}, Lmiui/util/CustomizeUtil;->needChangeSize()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceLayoutHideNavigation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected abstract forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I

    move-result v0

    return v0
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v3

    if-eqz v3, :cond_90

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_90

    move-object v4, v3

    :goto_e
    const/4 v2, 0x0

    if-eqz v4, :cond_24

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v2, v5, 0x0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_24

    or-int/lit8 v2, v2, 0x1

    :cond_24
    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->getDisabledFlags(I)I

    move-result v1

    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_42

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_42

    or-int/lit16 v1, v1, 0x200

    :cond_42
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_52

    if-eqz v4, :cond_52

    invoke-static {v4, v7}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_52

    or-int/lit16 v1, v1, 0x200

    :cond_52
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_62

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_62

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v5, v6, :cond_62

    and-int/lit16 v1, v1, -0x201

    :cond_62
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_74

    if-eqz v4, :cond_74

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, v4, :cond_74

    invoke-static {p2}, Lmiui/util/CustomizeUtil;->isRestrict(F)Z

    move-result v5

    if-eqz v5, :cond_74

    and-int/lit16 v1, v1, -0x241

    :cond_74
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_80

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getInputMethodWindowVisibleHeightLw()I

    move-result v5

    if-lez v5, :cond_80

    or-int/lit16 v1, v1, 0x200

    :cond_80
    move v0, v1

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;

    invoke-direct {v6, p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v5

    return v5

    :cond_90
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_e
.end method

.method protected getForbidFullScreenFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mForbidFullScreen:Z

    return v0
.end method

.method protected abstract getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method protected getPowerLongPressTimeOut()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v0, 0xbb8

    goto :goto_16
.end method

.method protected abstract getWakePolicyFlag()I
.end method

.method public hideBootMessages()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 11

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v0, 0x1050108

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarWidth:I

    const v0, 0x1050103

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeight:I

    const v0, 0x1050105

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeightLand:I

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mVolumeKeyWakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "miui.intent.SCREEN_RECORDER_ENABLE_KEYEVENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecordeEnablekKeyEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lmiui/util/AutoDisableScreenButtonsManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, v1}, Lmiui/util/SmartCoverManager;->init(Landroid/content/Context;Landroid/os/PowerManager;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fsg_disable_hw_keys"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFsgDisableHwKeys:Z

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->saveWindowTypeLayer(Landroid/content/Context;)V

    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .registers 9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_34

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_33

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 v2, 0x1a

    if-ne v2, v1, :cond_30

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    :cond_30
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    :cond_33
    return p4

    :cond_34
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z

    move-result v6

    if-nez v6, :cond_9

    return v3

    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_31

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/high16 v6, 0x1000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_33

    const/4 v4, 0x1

    :goto_1a
    iget-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-nez v6, :cond_37

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v6, :cond_35

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    xor-int/lit8 v0, v6, 0x1

    :goto_2a
    if-nez v4, :cond_30

    if-eqz p3, :cond_39

    if-eqz v0, :cond_39

    :cond_30
    return v3

    :cond_31
    const/4 v1, 0x0

    goto :goto_10

    :cond_33
    const/4 v4, 0x0

    goto :goto_1a

    :cond_35
    const/4 v0, 0x0

    goto :goto_2a

    :cond_37
    const/4 v0, 0x0

    goto :goto_2a

    :cond_39
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6a

    if-eqz v1, :cond_6a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6a

    iget-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-eqz v6, :cond_76

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    :try_start_4e
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->OnDoubleClickHome()V

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_6a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4e .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    return v3

    :catch_6b
    move-exception v2

    const-string/jumbo v6, "WindowManager"

    const-string/jumbo v7, "mNfcIntent problem"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    :cond_76
    iput-boolean v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6a
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 22

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_60

    const/4 v4, 0x1

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v13, :cond_62

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v13}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    :goto_1d
    if-eqz v4, :cond_27

    if-nez v8, :cond_27

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/4 v13, 0x4

    if-eq v6, v13, :cond_32

    const/16 v13, 0x52

    if-ne v6, v13, :cond_64

    :cond_32
    :goto_32
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->exitFreeFormWindowIfNeeded()V

    :cond_35
    const/16 v13, 0x52

    if-ne v6, v13, :cond_aa

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v13, :cond_68

    const-string/jumbo v13, "BaseMiuiPhoneWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring MENU because mTestModeEnabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    return-wide v14

    :cond_60
    const/4 v4, 0x0

    goto :goto_b

    :cond_62
    const/4 v7, 0x0

    goto :goto_1d

    :cond_64
    const/4 v13, 0x3

    if-ne v6, v13, :cond_35

    goto :goto_32

    :cond_68
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isLockDeviceWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v13

    if-eqz v13, :cond_7a

    const-string/jumbo v13, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v14, "device locked, pass MENU to lock window"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    return-wide v14

    :cond_7a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-nez v13, :cond_83

    const-wide/16 v14, 0x0

    return-wide v14

    :cond_83
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-nez v13, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v13

    if-nez v13, :cond_94

    if-eqz v4, :cond_97

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V

    :cond_94
    :goto_94
    const-wide/16 v14, -0x1

    return-wide v14

    :cond_97
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z

    goto :goto_94

    :cond_9b
    if-nez v8, :cond_a7

    if-nez v4, :cond_a4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    :cond_a4
    const-wide/16 v14, 0x0

    return-wide v14

    :cond_a7
    const-wide/16 v14, -0x1

    return-wide v14

    :cond_aa
    const/4 v13, 0x3

    if-ne v6, v13, :cond_1d1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v13, :cond_d4

    const-string/jumbo v13, "BaseMiuiPhoneWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring HOME because mTestModeEnabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    return-wide v14

    :cond_d4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isLockDeviceWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v13

    if-eqz v13, :cond_e6

    const-string/jumbo v13, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v14, "device locked, pass HOME to lock window"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    return-wide v14

    :cond_e6
    if-nez v4, :cond_199

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    if-eqz v13, :cond_f6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    const-wide/16 v14, -0x1

    return-wide v14

    :cond_f6
    if-nez v3, :cond_18f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v13, :cond_18f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v13, :cond_13d

    if-eqz v10, :cond_13d

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v13

    if-eqz v13, :cond_13d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v13

    if-eqz v13, :cond_13d

    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    :goto_11f
    if-nez v8, :cond_13a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v13, :cond_1c5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleDoubleTapOnHome()V

    :cond_13a
    :goto_13a
    const-wide/16 v14, -0x1

    return-wide v14

    :cond_13d
    if-eqz v7, :cond_14f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "statusbar"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    invoke-virtual {v9}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_14f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    if-nez v13, :cond_185

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v13, :cond_181

    xor-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_181

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v14, -0x1

    return-wide v14

    :cond_181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_11f

    :cond_185
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "Ignoring HOME; keyguard is on when first Home down"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    :cond_18f
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "Ignoring HOME; event canceled."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    :cond_199
    if-eqz p1, :cond_1ae

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    :goto_19f
    if-eqz v2, :cond_11f

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-eq v11, v13, :cond_1ab

    const/16 v13, 0x7d9

    if-ne v11, v13, :cond_1b0

    :cond_1ab
    const-wide/16 v14, 0x0

    return-wide v14

    :cond_1ae
    const/4 v2, 0x0

    goto :goto_19f

    :cond_1b0
    sget-object v13, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v12, v13

    const/4 v5, 0x0

    :goto_1b4
    if-ge v5, v12, :cond_11f

    sget-object v13, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v13, v13, v5

    if-ne v11, v13, :cond_1c2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(IZ)V

    :cond_1c2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b4

    :cond_1c5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V

    goto/16 :goto_13a

    :cond_1d1
    const/16 v13, 0x19

    if-ne v6, v13, :cond_1e5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    if-eqz v13, :cond_1e5

    if-nez v4, :cond_1e2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    :cond_1e2
    const-wide/16 v14, -0x1

    return-wide v14

    :cond_1e5
    const/16 v13, 0x18

    if-ne v6, v13, :cond_1f9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    if-eqz v13, :cond_1f9

    if-nez v4, :cond_1f6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    :cond_1f6
    const-wide/16 v14, -0x1

    return-wide v14

    :cond_1f9
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v14

    return-wide v14
.end method

.method protected interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    if-nez v4, :cond_8

    const/4 v4, 0x0

    return v4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_f0

    const/4 v6, 0x1

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v16

    const/high16 v4, 0x1000000

    and-int v4, v4, p2

    if-eqz v4, :cond_f3

    const/4 v14, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v4, :cond_100

    if-eqz p3, :cond_f6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v10

    :goto_2e
    const-string/jumbo v4, "BaseMiuiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "keyCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " down:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " eventTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " downTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " policyFlags:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " flags:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " deviceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isScreenOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " keyguardActive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " repeatCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerLongPressTimeOut()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Landroid/os/AnrMonitor;->screenHangMonitor(IZJ)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isTrackInputEvenForScreenRecorder(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_d7

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendKeyEventBroadcast(Landroid/view/KeyEvent;)V

    :cond_d7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isTrackInputEventForVoiceAssist(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendVoiceAssistKeyEventBroadcast(Landroid/view/KeyEvent;)V

    :cond_e0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    invoke-direct {v0, v5, v1, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->shouldInterceptKey(IZI)Z

    move-result v4

    if-eqz v4, :cond_103

    const/4 v4, 0x0

    return v4

    :cond_f0
    const/4 v6, 0x0

    goto/16 :goto_13

    :cond_f3
    const/4 v14, 0x0

    goto/16 :goto_1e

    :cond_f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v10

    goto/16 :goto_2e

    :cond_100
    const/4 v10, 0x0

    goto/16 :goto_2e

    :cond_103
    const/16 v4, 0x52

    if-ne v5, v4, :cond_111

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_111

    const/16 v5, 0xbb

    :cond_111
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isFingerPrintKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_122

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->processFingerprintNavigationEvent(Landroid/view/KeyEvent;Z)I

    move-result v4

    return v4

    :cond_122
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markKeyPressAndHandleKeyCombin(IZ)Z

    move-result v4

    if-eqz v4, :cond_138

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_138
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_162

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v4, :cond_162

    const-string/jumbo v4, "BaseMiuiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring POWER because mTestModeEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_162
    const/16 v4, 0x19

    if-ne v5, v4, :cond_189

    if-eqz v6, :cond_189

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    if-eqz v4, :cond_189

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_189

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_189
    const/4 v4, 0x3

    if-ne v5, v4, :cond_1be

    if-eqz v6, :cond_1aa

    if-nez v16, :cond_1aa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v4

    if-nez v4, :cond_1b8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    :goto_19f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v4, :cond_1aa

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    :cond_1aa
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v4, :cond_1be

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->inFingerprintEnrolling()Z

    move-result v4

    if-eqz v4, :cond_1be

    const/4 v4, 0x0

    return v4

    :cond_1b8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    goto :goto_19f

    :cond_1be
    const/16 v4, 0x19

    if-ne v5, v4, :cond_21a

    if-eqz v6, :cond_211

    if-eqz p3, :cond_1ed

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1ed

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1ed

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyTime:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptAccessibilityShortcutChord(Z)V

    :cond_1ed
    :goto_1ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v4, :cond_253

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlocked(ZLandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_253

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_211
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_1ed

    :cond_21a
    const/16 v4, 0x18

    if-ne v5, v4, :cond_1ed

    if-eqz v6, :cond_24a

    if-eqz p3, :cond_1ed

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1ed

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1ed

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyTime:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptAccessibilityShortcutChord(Z)V

    goto :goto_1ed

    :cond_24a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_1ed

    :cond_253
    if-eqz p3, :cond_27a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v8}, Lmiui/util/SmartCoverManager;->getSmartCoverLidOpen()Z

    move-result v8

    if-nez v8, :cond_278

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v8, :cond_278

    const/4 v8, 0x1

    :goto_26e
    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lmiui/util/AutoDisableScreenButtonsManager;->handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_27a

    const/4 v4, 0x0

    return v4

    :cond_278
    const/4 v8, 0x0

    goto :goto_26e

    :cond_27a
    if-nez v6, :cond_2b6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(IZ)V

    :cond_281
    :goto_281
    const/16 v4, 0xe0

    if-ne v5, v4, :cond_293

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    const/4 v7, 0x1

    if-ge v4, v7, :cond_293

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->registerProximitySensor()V

    :cond_293
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->streetSnap(ZIZLandroid/view/KeyEvent;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    if-eqz v4, :cond_2d2

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z

    move-result v4

    if-eqz v4, :cond_2d2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_2b6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_281

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v7

    if-ne v4, v7, :cond_2cc

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyLongPress(IZ)V

    goto :goto_281

    :cond_2cc
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(IZ)V

    goto :goto_281

    :cond_2d2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptPowerKey(Landroid/view/KeyEvent;Z)Z

    move-result v4

    if-eqz v4, :cond_2ec

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_2ec
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z

    move-result v4

    if-eqz v4, :cond_300

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_300
    if-nez p3, :cond_304

    if-eqz v14, :cond_322

    :cond_304
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v4, :cond_373

    if-eqz v10, :cond_373

    const/16 v4, 0x1b

    if-ne v5, v4, :cond_373

    xor-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_373

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_322
    const/4 v15, 0x1

    const/4 v13, 0x0

    sparse-switch v5, :sswitch_data_3c4

    const/4 v15, 0x0

    :cond_328
    :goto_328
    if-eqz v15, :cond_373

    if-eqz v13, :cond_36c

    if-eqz v6, :cond_352

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :sswitch_33c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    goto :goto_328

    :sswitch_341
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto :goto_328

    :sswitch_346
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->screenOffBecauseOfProxSensor()Z

    move-result v4

    if-eqz v4, :cond_328

    const/4 v13, 0x0

    goto :goto_328

    :cond_352
    if-eqz v10, :cond_35e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    :cond_35e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_36c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v4

    not-int v4, v4

    and-int p2, p2, v4

    :cond_373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->shouldInterceptHeadSetHookKey(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_37f

    const/4 v4, 0x0

    return v4

    :cond_37f
    move-object/from16 v7, p0

    move v8, v6

    move/from16 v9, p3

    move v11, v5

    move-object/from16 v12, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendOthersBroadcast(ZZZILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_39b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    return v4

    :cond_39b
    if-eqz v6, :cond_3b0

    const/16 v4, 0x18

    if-eq v4, v5, :cond_3a5

    const/16 v4, 0x19

    if-ne v4, v5, :cond_3be

    :cond_3a5
    :goto_3a5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3b0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->playSoundEffect(IIZI)V

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v4

    return v4

    :cond_3be
    const/16 v4, 0x1a

    if-ne v4, v5, :cond_3b0

    goto :goto_3a5

    nop

    :sswitch_data_3c4
    .sparse-switch
        0x18 -> :sswitch_346
        0x19 -> :sswitch_346
        0x1b -> :sswitch_341
        0x110 -> :sswitch_33c
    .end sparse-switch
.end method

.method protected interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z
    .registers 16

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2b

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/high16 v8, 0x1000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_2d

    const/4 v4, 0x1

    :goto_12
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v8, :cond_2f

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v8

    xor-int/lit8 v0, v8, 0x1

    :goto_1e
    if-nez v4, :cond_2a

    if-eqz p3, :cond_24

    if-nez v0, :cond_2a

    :cond_24
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAudioActive()Z

    move-result v8

    if-eqz v8, :cond_31

    :cond_2a
    return v3

    :cond_2b
    const/4 v1, 0x0

    goto :goto_8

    :cond_2d
    const/4 v4, 0x0

    goto :goto_12

    :cond_2f
    const/4 v0, 0x0

    goto :goto_1e

    :cond_31
    const/16 v8, 0x19

    if-ne v5, v8, :cond_71

    if-eqz v1, :cond_71

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_71

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x12c

    cmp-long v8, v8, v10

    if-gez v8, :cond_72

    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    :goto_52
    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-ltz v8, :cond_71

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    :try_start_60
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_60 .. :try_end_70} :catch_79

    const/4 v3, 0x1

    :cond_71
    :goto_71
    return v3

    :cond_72
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    iput-wide v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    goto :goto_52

    :catch_79
    move-exception v2

    const-string/jumbo v8, "WindowManager"

    const-string/jumbo v9, "mCameraIntent problem"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71
.end method

.method protected abstract isFingerPrintKey(Landroid/view/KeyEvent;)Z
.end method

.method protected isInLockTaskMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isPhoneOffhook()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    :cond_11
    return v0
.end method

.method protected abstract isScreenOnInternal()Z
.end method

.method protected abstract launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract launchRecentPanelInternal()V
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 17

    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_14

    :cond_13
    return-void

    :cond_14
    sget-object v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v11

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-eq v0, v13, :cond_40

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d9

    if-ne v0, v13, :cond_9e

    :cond_40
    :goto_40
    if-eqz v11, :cond_9d

    const v0, 0x10100

    and-int/2addr v0, v10

    const v13, 0x10100

    if-ne v0, v13, :cond_9d

    if-nez p2, :cond_9d

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->originalCanHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_9d

    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_9d

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenLeft:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenTop:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_9d
    return-void

    :cond_9e
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceLayoutHideNavigation(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_9d

    goto :goto_40
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {v2, p3, v3}, Lmiui/util/SmartCoverManager;->notifyLidSwitchChanged(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    return-void

    :cond_f
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v2}, Lmiui/util/SmartCoverManager;->getSmartCoverMode()I

    move-result v2

    if-ne v2, v1, :cond_1d

    :goto_17
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    return-void

    :cond_1d
    const/4 v1, 0x0

    goto :goto_17
.end method

.method protected abstract onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 5

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    return v0

    :cond_1b
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method protected abstract preloadRecentAppsInternal()V
.end method

.method protected abstract processFingerprintNavigationEvent(Landroid/view/KeyEvent;Z)I
.end method

.method protected registerProximitySensor()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerStatusBarInputEventReceiver()V
    .registers 1

    return-void
.end method

.method protected releaseScreenOnProximitySensor()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release()Z

    :cond_9
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    :goto_e
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method protected abstract screenOffBecauseOfProxSensor()Z
.end method

.method public screenTurnedOff()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startCameraProcess()V

    return-void
.end method

.method protected screenTurnedOffInternal(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager;->notifyScreenTurningOn()Z

    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public setCurrentUserLw(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->onUserSwitch(I)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v0, p1}, Lmiui/util/SmartCoverManager;->onUserSwitch(I)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->setUserId(I)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startedWakingUp()V
    .registers 7

    const/4 v4, -0x1

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_5b

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_screen_on_proximity_sensor"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110a0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_39
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5a

    if-eqz v1, :cond_5a

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->aquire()V

    :cond_5a
    return-void

    :cond_5b
    if-eqz v0, :cond_5f

    const/4 v1, 0x1

    goto :goto_39

    :cond_5f
    const/4 v1, 0x0

    goto :goto_39
.end method

.method protected stopLockTaskMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected systemReadyInternal()V
    .registers 10

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo v3, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    :cond_24
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "torch_state"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "auto_test_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "vr_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v3, v5, :cond_5a

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v8}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    invoke-static {v8}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    :cond_5a
    const-string/jumbo v3, "front_fingerprint_sensor"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    const-string/jumbo v3, "support_tap_fingerprint_sensor_to_home"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    const-string/jumbo v3, "fp_nav_event_name_list"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    array-length v5, v2

    move v3, v4

    :goto_7e
    if-ge v3, v5, :cond_8a

    aget-object v1, v2, v3

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_8a
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "policy_control"

    const-string/jumbo v6, "immersive.preconfirms=*"

    const/4 v7, -0x2

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "persist.camera.snap.enable"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_cb

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "persist.camera.snap.enable"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-nez v3, :cond_d1

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "key_long_press_volume_down"

    const-string/jumbo v6, "Street-snap"

    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_cb
    :goto_cb
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    return-void

    :cond_d1
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "key_long_press_volume_down"

    const-string/jumbo v6, "none"

    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_cb
.end method

.method protected abstract toggleSplitScreenInternal()V
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .registers 1

    return-void
.end method

.method protected updateNavigationBarWidth()V
    .registers 1

    return-void
.end method
