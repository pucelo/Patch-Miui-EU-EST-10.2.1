.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$10;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$11;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$12;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$13;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$14;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$15;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$16;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$17;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$18;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$1;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$2;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$3;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$4;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$5;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$6;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$7;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$8;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$9;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$LockscreenElementFactory;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;
    }
.end annotation


# static fields
.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static sCurrentUser:I

.field private static sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalDeviceSenseTimeSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRegionFaceJiajiaSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRegionSenseTimeSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public static sScreenTurnedOnTime:J

.field private static sSecondUser:I

.field public static sWakeupByNotification:Z


# instance fields
.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceInteractive:Z

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mFaceUnlockApplyLock:Z

.field mFaceUnlockApplyObserver:Landroid/database/ContentObserver;

.field private final mFaceUnlockCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

.field private mFaceUnlockCheckByNotificationScreenOn:Z

.field mFaceUnlockCheckByNotificationScreenOnObserver:Landroid/database/ContentObserver;

.field mFaceUnlockFeatureObserver:Landroid/database/ContentObserver;

.field private mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

.field private mFaceUnlockStarted:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFingerprintMode:I

.field private mFingerprintRunningState:I

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field mFullScreenGestureObserver:Landroid/database/ContentObserver;

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareUnavailableRetryCount:I

.field private mHasFaceUnlockData:Z

.field private mHasLockscreenWallpaper:Z

.field private mIsFingerprintPermanentlyLockout:Z

.field private mIsFingerprintTemporarilyLockout:Z

.field private mIsInSuspectMode:Z

.field private mIsLockScreenMagazinePkgExist:Z

.field private mIsLockScreenMagazineWallpaper:Z

.field private mIsPsensorDisabled:Z

.field private mIsSupportLockScreenMagazineLeft:Z

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsVisible:Z

.field private mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardOccluded:Z

.field private mKeyguardShowingAndOccluded:Z

.field private final mLightAndAccSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightClock:Z

.field private mLightKeyguardWallpaperGxzw:Z

.field private mLightLockScreenMagazinePreSetting:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightWallpaperBottom:Z

.field private mLightWallpaperStatusBar:Z

.field private mLigthLux:F

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

.field private mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

.field private final mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

.field private mNeedsSlowUnlockTransition:Z

.field private mOrientationZ:F

.field private mPhoneState:I

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRingMode:I

.field private mScreenOn:Z

.field private mSecondUserProviderObserver:Landroid/database/ContentObserver;

.field private final mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarHeight:I

.field private final mStrongAuthTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private final mTimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

.field private mWallpaperBlurColor:I

.field private mWallpaperChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLigthLux:F

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOrientationZ:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get17()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get18()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get19()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get20()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/faceunlock/FaceUnlockCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFaceUnlockData:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInSuspectMode:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazineWallpaper:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyLock:Z

    return p1
.end method

.method static synthetic -set10(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -set11(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -set12(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -set13(I)I
    .locals 0

    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sSecondUser:I

    return p0
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCheckByNotificationScreenOn:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockStarted:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFaceUnlockData:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInSuspectMode:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazineWallpaper:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/keyguard/KeyguardUpdateMonitor;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLigthLux:F

    return p1
.end method

.method static synthetic -set8(Lcom/android/keyguard/KeyguardUpdateMonitor;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOrientationZ:F

    return p1
.end method

.method static synthetic -set9(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldStartFaceUnlock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRegionChanged()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleShowingStateChange(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->processKeyguardWallpaper()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerFaceUnlockContentObserver()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateWallpaper(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.FallbackHome"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPsensorDisabled:Z

    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLigthLux:F

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOrientationZ:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInSuspectMode:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    new-instance v2, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    invoke-direct {v2}, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazinePkgExist:Z

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondUserProviderObserver:Landroid/database/ContentObserver;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperInfoListeners:Ljava/util/List;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockFeatureObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCheckByNotificationScreenOnObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTimeoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightWallpaperStatusBar:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightClock:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightWallpaperBottom:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightKeyguardWallpaperGxzw:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightLockScreenMagazinePreSetting:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperBlurColor:I

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$18;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightAndAccSensorListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    :cond_0
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x3e8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "face_unlock_release"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :try_start_0
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$19;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerCompat;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_1

    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.systemui.ACTION_STRONG_AUTH_TIMEOUT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTimeoutReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.android.systemui.permission.SELF"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v2, "trust"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/TrustManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternUtilsCompat;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07042f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarHeight:I

    const-string/jumbo v2, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    :cond_2
    const-class v2, Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_wallpaper_provider_authority"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "second_user_id"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondUserProviderObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondUserProviderObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateWallpaper(Z)V

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.miui.keyguard.setwallpaper"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$20;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$20;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerFaceUnlockContentObserver()V

    const/4 v2, 0x1

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "force_fsg_nav_bar"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportWirelessCharge()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPsensorDisabled(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPsensorDisabled:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPsensorDisabled:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_5
    return-void

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto/16 :goto_0
.end method

.method private canFaceUnlockWhenOccluded()Z
    .locals 2

    const-string/jumbo v0, "perseus"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isTopActivitySystemApp(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSCSlideNotOpenCamera(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createBitmapSafely: illegal argument: bitmapWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bitmapHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getAwesomeLockScreen(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 16

    const-string/jumbo v6, "/data/system/theme/lockscreen"

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v10, Lmiui/maml/util/ZipResourceLoader;

    const-string/jumbo v13, "advance/"

    invoke-direct {v10, v6, v13}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    new-instance v12, Lmiui/maml/ScreenContext;

    new-instance v13, Lcom/android/keyguard/KeyguardUpdateMonitor$LockscreenElementFactory;

    invoke-direct {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor$LockscreenElementFactory;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v10, v13}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V

    new-instance v11, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v11, v12}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x0

    return-object v13

    :cond_0
    const/4 v13, 0x0

    return-object v13

    :cond_1
    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->init()V

    const-string/jumbo v13, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    invoke-virtual {v11, v3}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->finish()V

    return-object v2

    :cond_2
    iget v13, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v13, "KeyguardUpdateMonitor"

    const-string/jumbo v14, "get awesone lock screen fail"

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    return-object v13
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method public static declared-synchronized getSecondUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sSecondUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleAirplaneModeChanged()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onAirplaneModeChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    const-string/jumbo v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAcquired()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintAuthenticated(I)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";currentuserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";authUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    :try_start_1
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fingerprint authenticated for wrong user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "Failed to get current user id: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    throw v2
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v2, v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :goto_0
    if-ne p1, v6, :cond_0

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    if-ge v2, v4, :cond_0

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtilsCompat;->requireStrongAuth(Lcom/android/internal/widget/LockPatternUtils;II)V

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFingerprintPermanentlyLockout:Z

    :cond_1
    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFingerprintTemporarilyLockout:Z

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintHelp(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintLockoutReset()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 6

    const-string/jumbo v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleKeyguardBouncerChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "handleKeyguardReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return-void
.end method

.method private handleLocaleChanged()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRegionChanged()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRegionChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 5

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleServiceStateChange(subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", serviceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "invalid subId in handleServiceStateChange()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onServiceStateChanged(ILandroid/telephony/ServiceState;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleShowingStateChange(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->updateShowingStatus(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7

    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSimStateChange(subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "KeyguardUpdateMonitor"

    const-string/jumbo v5, "invalid subId in handleSimStateChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v4, :cond_5

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, p3, :cond_3

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-eq v4, p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_2
    iput-object p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    goto :goto_0

    :cond_4
    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v4, p2, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 4

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    const-string/jumbo v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserUnlocked()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    return v5

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_4

    return v5

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_5

    return v5

    :cond_5
    if-eqz v0, :cond_6

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-eq v3, v4, :cond_6

    return v5

    :cond_6
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    goto :goto_0
.end method

.method private isFingerprintUnlock()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isOwnerUser()Z
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 3

    const/4 v1, 0x1

    move-object v0, p0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSlideCoverOpened()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "perseus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sc_status"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isTrustDisabled(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRunningStateChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onFingerprintAuthenticated(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyguard update monitor, start face unlock  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";sWakeupByNotification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sWakeupByNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";mFaceUnlockCheckByNotificationScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCheckByNotificationScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";shouldListenForFaceUnlock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceUnlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isSupportFaceUnlock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isOwnerUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOwnerUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";mSwitchingUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isKeyguardHiding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";mFaceUnlockStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isStartedWakingUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isStartedWakingUp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isScreeningOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreeningOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";mKeyguardIsVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processKeyguardWallpaper()V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    if-eqz v40, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    check-cast v40, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v40 .. v40}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/view/WindowManager;

    new-instance v27, Landroid/util/DisplayMetrics;

    invoke-direct/range {v27 .. v27}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface/range {v41 .. v41}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v38, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v37, v0

    int-to-float v1, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v1, v7

    move/from16 v0, v38

    int-to-float v7, v0

    div-float v36, v1, v7

    move/from16 v0, v31

    int-to-float v1, v0

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v1, v7

    move/from16 v0, v37

    int-to-float v7, v0

    div-float v35, v1, v7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v6, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, v5

    move v12, v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v39

    const v1, 0x7f0704a0

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v36

    float-to-int v11, v1

    const v1, 0x7f07049e

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v12, v1

    div-int/lit8 v1, v5, 0x2

    div-int/lit8 v7, v11, 0x2

    sub-int v3, v1, v7

    if-ltz v3, :cond_6

    :goto_0
    const v1, 0x7f07049f

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v1, v1

    add-int v4, v1, v6

    move-object/from16 v7, p0

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v26

    const v1, 0x7f07049c

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v0, v1

    move/from16 v18, v0

    const/4 v3, 0x0

    sub-int v4, v31, v18

    move v11, v5

    move/from16 v12, v18

    move-object/from16 v13, p0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v25

    const v1, 0x7f0704af

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v36

    float-to-int v0, v1

    move/from16 v23, v0

    const v1, 0x7f0704af

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v0, v1

    move/from16 v24, v0

    const v1, 0x7f0701cf

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v0, v1

    move/from16 v33, v0

    const v1, 0x7f0701ce

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v36

    float-to-int v0, v1

    move/from16 v32, v0

    sub-int v1, v5, v23

    sub-int v3, v1, v32

    add-int v4, v24, v33

    move/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v19, p0

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-direct/range {v19 .. v24}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v39, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v39

    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightWallpaperStatusBar:Z

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v26, :cond_1

    const/4 v1, 0x3

    move-object/from16 v0, v26

    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightClock:Z

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v25, :cond_2

    const/4 v1, 0x3

    move-object/from16 v0, v25

    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightWallpaperBottom:Z

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwUtils;->caculateGxzwIconSize()V

    const v1, 0x7f0704ae

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v30

    rsub-int/lit8 v1, v30, 0x0

    int-to-float v1, v1

    mul-float v1, v1, v36

    float-to-int v3, v1

    rsub-int/lit8 v1, v30, 0x0

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v4, v1

    mul-int/lit8 v1, v30, 0x2

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    mul-float v1, v1, v36

    float-to-int v11, v1

    mul-int/lit8 v1, v30, 0x2

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    mul-float v1, v1, v35

    float-to-int v12, v1

    move-object/from16 v7, p0

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->createBitmapSafely(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v28

    if-eqz v28, :cond_3

    const/4 v1, 0x3

    move-object/from16 v0, v28

    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightKeyguardWallpaperGxzw:Z

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v29, :cond_4

    const/4 v1, 0x3

    move-object/from16 v0, v29

    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightLockScreenMagazinePreSetting:Z

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateWallpaperBlurColor()V

    :cond_5
    return-void

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private refreshSimState(II)Z
    .locals 9

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, v4, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_0
    iget-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v4, :cond_1

    iget v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-eq v6, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private registerFaceUnlockContentObserver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlock_has_feature"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlcok_apply_for_lock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlock_by_notification_screen_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCheckByNotificationScreenOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCheckByNotificationScreenOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserManagerCompat;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/ResolveInfoCompat;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private scheduleStrongAuthTimeout()V
    .locals 10

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-le v3, v6, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v8, 0x0

    invoke-static {v0, v8, v3}, Landroid/app/admin/DevicePolicyManagerCompat;->getRequiredStrongAuthTimeout(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)J

    move-result-wide v8

    add-long v4, v6, v8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.ACTION_STRONG_AUTH_TIMEOUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.systemui.USER_ID"

    sget v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/high16 v7, 0x10000000

    invoke-static {v3, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 6

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onAirplaneModeChanged()V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setFingerprintRunningState(I)V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne p1, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private shouldStartFaceUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockCheckByNotificationScreenOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sWakeupByNotification:Z

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sWakeupByNotification:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isStartedWakingUp()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreeningOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canFaceUnlockWhenOccluded()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintUnlock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isDozing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSlideCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startListeningForFingerprint()V
    .locals 7

    const/4 v3, 0x3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v2, "startListeningForFingerprint()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_3
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "stopListeningForFingerprint()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iput-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_2
    return-void
.end method

.method private updateWallpaper(Z)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$21;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$24;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$24;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x140

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchScreenTurnedOff()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x141

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v7, "KeyguardUpdateMonitor state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v7, "  SIM States:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v7, "  Subs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v7, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "  Service states:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Fingerprint state (user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    allowed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    auth\'d="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    authSinceBoot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    disabled(DPM)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    possible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    strongAuthFlags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    trustManaged="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public faceUnlockApplyLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyLock:Z

    return v0
.end method

.method public getBLEUnlockState()Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    return-object v0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getLockScreenMagazineWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    return-object v0
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    const/4 v5, -0x1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManagerCompat;->getSlotIndex(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_0

    if-le v0, v6, :cond_0

    move v5, v2

    move v0, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object v0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object v1

    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

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

.method public getUserHasTrust(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWallpaperBlurColor()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperBlurColor:I

    return v0
.end method

.method protected handleBootCompleted()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleBottomAreaButtonClicked(Z)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBottomAreaButtonClicked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    :cond_2
    return-void
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method public handleLockScreenMagazineStatus()V
    .locals 8

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isCustomWallpaper(Landroid/content/Context;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getLockScreenMagazineStatus(Landroid/content/Context;)Z

    move-result v2

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleLockScreenMagazineStatus wallpaperAuthority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isLockScreenMagazineOpend = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->setLockScreenMagazineStatus(Landroid/content/Context;Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->notifySubscriptionChange(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isLockScreenMagazineWallpaper(Landroid/content/Context;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isThemeLockWallpaper(Landroid/content/Context;)Z

    move-result v4

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isDefaultLockScreenTheme()Z

    move-result v1

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleLockScreenMagazineStatus isDefaultLockScreenTheme = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->APPLY_MAGAZINE_DEFAULT_AUTHORITY:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->setWallpaperAuthority(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleSimSubscriptionInfoChanged()V
    .locals 15

    const-string/jumbo v12, "KeyguardUpdateMonitor"

    const-string/jumbo v13, "onSubscriptionInfoChanged()"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    const-string/jumbo v12, "KeyguardUpdateMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SubInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v12, "KeyguardUpdateMonitor"

    const-string/jumbo v13, "onSubscriptionInfoChanged: list is null"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v7

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_3

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSimSecureStateChanged()V

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    iget-object v13, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/4 v6, 0x0

    :goto_3
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_5

    iget v12, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v13, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v14, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_4
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_9

    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 4

    const-string/jumbo v3, "KeyguardUpdateMonitor#handleStartedWakingUp"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 4

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public hasFaceUnlockData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFaceUnlockData:Z

    return v0
.end method

.method public hasLockscreenWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isFaceUnlockApplyLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFaceUnlockData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyLock:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerprintTemporarilyLockout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFingerprintTemporarilyLockout:Z

    return v0
.end method

.method public isGoingToSleep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return v0
.end method

.method public isLightClock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightClock:Z

    return v0
.end method

.method public isLightLockScreenMagazinePreSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightLockScreenMagazinePreSetting:Z

    return v0
.end method

.method public isLightWallpaperBottom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightWallpaperBottom:Z

    return v0
.end method

.method public isLightWallpaperGxzw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightKeyguardWallpaperGxzw:Z

    return v0
.end method

.method public isLightWallpaperStatusBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightWallpaperStatusBar:Z

    return v0
.end method

.method public isLockScreenMagazinePkgExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazinePkgExist:Z

    return v0
.end method

.method public isLockScreenMagazineWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazineWallpaper:Z

    return v0
.end method

.method public isNeedRepositionDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->isNeedRepositionDevice()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOOS()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lt v5, v9, :cond_2

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slot id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    aget v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    if-eq v5, v9, :cond_1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v2, 0x0

    :cond_1
    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is emergency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "voice state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "KeyguardUpdateMonitor"

    const-string/jumbo v6, "state is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is Emergency supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isPsensorDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPsensorDisabled:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method public isSimPinVoiceSecure()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method public isSupportLockScreenMagazineLeft()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwitchingUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return v0
.end method

.method public isUnlockWithFingerprintPossible(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    return v0
.end method

.method public isUnlockingWithFingerprintAllowed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserManagerCompat;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method public needsSlowUnlockTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return v0
.end method

.method public notifyWallpaperInfoChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;->updateWallPaperInfo(Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5

    const-string/jumbo v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyguardVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 0

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 0

    return-void
.end method

.method public queryLockScreenMagazineWallpaperInfo()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazineWallpaper:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getLockScreenMagazineWallpaperInfo(Landroid/content/Context;)Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->initExtra()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    const-string/jumbo v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public registerSeneorsForKeyguard(Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;)V
    .locals 4

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintUnlock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPsensorDisabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightAndAccSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightAndAccSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    invoke-virtual {v0, v1}, Lmiui/util/ProximitySensorWrapper;->registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    goto :goto_0
.end method

.method public registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;->onWallpaperChange(Z)V

    :cond_0
    return-void
.end method

.method public registerWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;->updateWallPaperInfo(Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;)V

    return-void
.end method

.method public registerWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->registerWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    goto :goto_0
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 4

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportSimUnlocked(subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManagerCompat;->getSlotIndex(I)I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public reportSuccessfulStrongAuthUnlockAttempt()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->scheduleStrongAuthTimeout()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    :cond_0
    return-void
.end method

.method public resetAllFingerprintLockout()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFingerprintPermanentlyLockout:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFingerprintTemporarilyLockout:Z

    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 4

    const-string/jumbo v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendKeyguardBouncerChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardReset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui_keyguard_ble_unlock_succeed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setFaceUnlockStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockStarted:Z

    return-void
.end method

.method public setFingerprintMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintMode:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v2, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    return-void
.end method

.method public setKeyguardShowingAndOccluded(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    move v0, p2

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowingAndOccluded:Z

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-void
.end method

.method public setLockScreenMagazinePkgExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsLockScreenMagazinePkgExist:Z

    return-void
.end method

.method public setSupportLockScreenMagazineLeft(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsSupportLockScreenMagazineLeft:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenMagazineStatusChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method public shouldListenForFaceUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasFaceUnlockData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockApplyLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOwnerUser()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldListenForFingerprint()Z
    .locals 2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowingAndOccluded:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintUnlock()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowingAndOccluded:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->isTopActivitySystemApp(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    return v0
.end method

.method public startFaceUnlock()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldStartFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockStarted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "start face unlock "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockStarted:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$22;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$22;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceUnlockApplyLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isDozing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockStarted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintUnlock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "out"

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopFaceUnlock()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceUnlockStarted(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$23;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$23;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterSeneorsForKeyguard()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPsensorDisabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLightAndAccSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsInSuspectMode:Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    invoke-virtual {v0}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    goto :goto_0
.end method

.method public unregisterWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mMiuiWirelessChargeController:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->unregisterWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V

    :cond_0
    return-void
.end method

.method public updateFingerprintListeningState()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v1, v3, :cond_1

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-eq v1, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    goto :goto_0
.end method

.method public updateShowingState(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateWallpaperBlurColor()V
    .locals 6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAwesomeLockScreen(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getFastBlurColor(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    :goto_1
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mWallpaperBlurColor:I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->getFastBlurColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->addTwoColor(II)I

    move-result v1

    goto :goto_1
.end method
