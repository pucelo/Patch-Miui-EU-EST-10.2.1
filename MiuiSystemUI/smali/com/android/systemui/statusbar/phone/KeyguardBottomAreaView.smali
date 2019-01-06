.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mBatteryLevel:I

.field private mChargeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mChargingBackArrowClickListener:Landroid/view/View$OnClickListener;

.field private mChargingBackArrowTouchListener:Landroid/view/View$OnTouchListener;

.field private mChargingEnterAnimRunnable:Ljava/lang/Runnable;

.field private mChargingHintText:Ljava/lang/String;

.field private mChargingInfoBackArrow:Landroid/widget/ImageView;

.field private mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

.field private mChargingListAndBackArrow:Landroid/widget/LinearLayout;

.field private mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

.field private mChargingViewClickListener:Landroid/view/View$OnClickListener;

.field private mDarkMode:Z

.field private mDensityDpi:I

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDozing:Z

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEnterpriseDisclosure:Landroid/widget/TextView;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mFontScale:F

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLanguage:Ljava/lang/String;

.field private mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

.field private mLeftAffordanceViewTips:Landroid/widget/TextView;

.field private mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

.field mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension",
            "<",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftIsVoiceAssist:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMaxChargingWattage:I

.field private mNeedRepositionDevice:Z

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPluggedIn:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field private mQuickCharging:Ljava/lang/Boolean;

.field private mRefreshChargingInfoRunnable:Ljava/lang/Runnable;

.field private mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

.field private mRightAffordanceViewTips:Landroid/widget/TextView;

.field private mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

.field mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension",
            "<",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTemperature:I

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSetupComplete:Z

.field private mUserUnlocked:Z

.field private mWirelessChargeCallback:Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingHintText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMaxChargingWattage:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNeedRepositionDevice:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPluggedIn:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mQuickCharging:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTemperature:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserUnlocked:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/LockScreenMagazineController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargeAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingHintText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMaxChargingWattage:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNeedRepositionDevice:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserUnlocked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockScreenMagazineMainEntryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->chargingInfoDown()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->chargingInfoUp()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleRefreshBatteryInfo(ZII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->refreshChargingInfo()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLeftButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setRightButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNeedRepositionDevice:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mWirelessChargeCallback:Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingBackArrowTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingBackArrowClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingViewClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mQuickCharging:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingEnterAnimRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRefreshChargingInfoRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private chargingInfoDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startDownAnim()V

    :cond_0
    return-void
.end method

.method private chargingInfoUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->onCharingViewClick()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRefreshChargingInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRefreshChargingInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getLockScreenMagazineIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getLockScreenMagazineMainEntryIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->getPreMainEntryResDarkIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const v3, 0x7f080234

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->getPreMainEntryResLightIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const v3, 0x7f080233

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private handleRefreshBatteryInfo(ZII)V
    .locals 6

    const/4 v2, 0x0

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTemperature:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPluggedIn:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingEnterAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingEnterAnimRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    int-to-long v4, v1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->clearAnimation()V

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->canShowChargeCircle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mQuickCharging:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, p2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingLevel(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateVisibility(Z)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setVisibility(I)V

    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPluggedIn:Z

    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBatteryLevel:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRefreshChargingInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRefreshChargingInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/16 v1, 0x12c

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->chargingInfoDown()V

    goto :goto_1
.end method

.method private handleTrustCircleClick()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xbf

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f110358

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    return-void
.end method

.method private initAccessibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v5, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v0

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v5, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v6, "Can\'t get userId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v7
.end method

.method private refreshChargingInfo()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargeAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargeAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$18;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargeAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private setLeftButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method private setRightButton(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightAffordanceIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method private startButtonLayoutAnimate(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/widget/TextView;Z)V
    .locals 11

    if-eqz p4, :cond_0

    const/4 v7, -0x1

    :goto_0
    int-to-float v0, v7

    sget-object v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/high16 v9, -0x3db80000    # -50.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, -0x3db80000    # -50.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/high16 v9, -0x3f000000    # -8.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, -0x3f000000    # -8.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v9, v0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {p3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v7, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v7}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;

    invoke-direct {v7, p0, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateCameraVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateDrawableResource()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    return-void
.end method

.method private updateEmergencyButton()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    :cond_0
    return-void
.end method

.method private updateLeftAffordanceIcon()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateRightAffordanceIcon()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v3, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateViewsLayoutParams()V
    .locals 14

    const v13, 0x7f070147

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07014c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initPreMainEntryIcon()V

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v10}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v11, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v12, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v10, v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070152

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v10}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;->getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    move-result-object v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v11, v6, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v12, v6, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070153

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070150

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v10, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateViewsTextSize()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    int-to-float v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserManagerCompat;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserUnlocked:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public canShowGxzw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->canShowGxzw()Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->isChargingAnimationInDeclining()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->chargingInfoDown()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f06009d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0600a4

    goto :goto_0
.end method

.method public handleBottomButtonClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBottomAreaButtonClicked(Z)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initTipsView(Z)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const v4, 0x7f110480

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f080232

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const v4, 0x7f110481

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f080231

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const v4, 0x7f11047e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    if-eqz v2, :cond_3

    const v2, 0x7f080230

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    const v2, 0x7f08022f

    goto :goto_3
.end method

.method public launchCamera(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "camera_from_keyguard"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    return-void
.end method

.method public launchLockScreenMagazine(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockScreenMagazineIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/plugins/IntentButtonProvider;

    const-string/jumbo v2, "com.android.systemui.action.PLUGIN_LOCKSCREEN_RIGHT_BUTTON"

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$12;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Lcom/android/systemui/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$13;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Lcom/android/systemui/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    const-class v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/plugins/IntentButtonProvider;

    const-string/jumbo v2, "com.android.systemui.action.PLUGIN_LOCKSCREEN_LEFT_BUTTON"

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$14;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$15;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Lcom/android/systemui/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$16;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Lcom/android/systemui/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportWirelessCharge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mWirelessChargeCallback:Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleBottomButtonClicked(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startButtonLayoutAnimate(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleBottomButtonClicked(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startButtonLayoutAnimate(Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateEmergencyButton()V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateViewsTextSize()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFontScale:F

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDensityDpi:I

    if-eq v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateViewsLayoutParams()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateViewsTextSize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateDrawableResource()V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDensityDpi:I

    :cond_1
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLanguage:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->destroy()V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->supportWirelessCharge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mWirelessChargeCallback:Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEnterpriseDisclosure:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->watchForCameraPolicyChanges()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateEmergencyButton()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    const v0, 0x7f0a019d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNeedRepositionDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setNeedRepositionDevice(Z)V

    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingListAndBackArrow:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingBackArrowTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingBackArrowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNeedRepositionDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setNeedRepositionDevice(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->chargingInfoDown()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPluggedIn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->canShowChargeCircle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->canShowChargeCircle(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setVisibility(I)V

    goto :goto_0
.end method

.method public resolveCameraIntent()Landroid/content/pm/ResolveInfo;
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    const/high16 v4, 0x10000

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "resolveCameraIntent failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public resolveWallpaperCarouselIntent()Landroid/content/pm/ResolveInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockScreenMagazineIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDarkMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setDarkMode(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightAffordanceIcon()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDarkMode(Z)V

    :cond_0
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDozing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimation()V

    :cond_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDarkMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDarkMode(Z)V

    return-void
.end method

.method public setLockScreenMagazineController(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    return-void
.end method

.method public setViewsAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mChargingInfoContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public startButtonLayoutAnimate(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startButtonLayoutAnimate(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/widget/TextView;Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceViewTips:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startButtonLayoutAnimate(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method public startFinishDozeAnimation()V
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    const-wide/16 v0, 0x30

    :cond_0
    const-wide/16 v2, 0x30

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public updateLeftAffordance()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    return-void
.end method
