.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$1;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$2;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

.field private mChargeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mChargingSpeed:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private mDarkMode:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIndicationArea:Landroid/view/ViewGroup;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mRestingIndication:Ljava/lang/String;

.field private mShouldUpdateBatteryIndication:Z

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private final mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTransientIndication:Ljava/lang/String;

.field private mTransientTextColor:I

.field private final mUpArrow:Landroid/widget/ImageView;

.field private mUpArrowIndication:Ljava/lang/String;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShouldUpdateBatteryIndication:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->clearUpArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleBottomButtonClicked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleExitArrowAndTextAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleTickReceived()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideChargingClickToDetailInfo()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateChargingInfoIndication()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 1

    const-string/jumbo v0, "Doze:KeyguardIndication"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLockHelper;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/util/wakelock/WakeLock;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/util/wakelock/WakeLock;Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a0154

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x7f0a0153

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v0, p3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method private clearUpArrowAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method private handleBottomButtonClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setBottomAreaButtonClicked(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->startBottomButtonClickAnim(Z)V

    return-void
.end method

.method private handleExitArrowAndTextAnimation()V
    .locals 15

    const/16 v10, 0x1f4

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40000000    # -2.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const-wide/16 v2, 0x64

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private handleTickReceived()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    :cond_0
    return-void
.end method

.method private hideChargingClickToDetailInfo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShouldUpdateBatteryIndication:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private startBottomButtonClickAnim(Z)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateChargingInfoIndication()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyManagerCompat;->isDeviceManaged(Landroid/app/admin/DevicePolicyManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyManagerCompat;->getDeviceOwnerOrganizationName(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v4, 0x7f110229

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v2, 0x7f110228

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateIndication()V
    .locals 5

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShouldUpdateBatteryIndication:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    if-eqz v0, :cond_6

    const v0, 0x7f08026e

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    const v0, 0x7f08026d

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method public getTextColor()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

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

.method public hideTransientIndication()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->clearUpArrowAnimation()V

    :cond_0
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTransientIndication(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method
