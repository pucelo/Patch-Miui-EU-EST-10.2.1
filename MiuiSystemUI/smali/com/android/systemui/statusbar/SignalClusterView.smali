.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$1;,
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sFilterColor:I


# instance fields
.field private mActivityEnabled:Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mBigRoamEnable:Z

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private mDarkIntensity:F

.field mDataConnectedStatus:[Z

.field private final mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

.field mDemoMobileSignal:Landroid/widget/ImageView;

.field private mDemoMode:Z

.field mDualSignalDescription:[Ljava/lang/String;

.field private final mEndPadding:I

.field private final mEndPaddingNothingVisible:I

.field mEthernet:Landroid/widget/ImageView;

.field private mEthernetAble:Z

.field mEthernetDark:Landroid/widget/ImageView;

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetIconId:I

.field private mEthernetVisible:Z

.field private mForceBlockWifi:Z

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIconScaleFactor:F

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private mLastAirplaneIconId:I

.field private mLastEthernetIconId:I

.field private mLastWifiActivityId:I

.field private mLastWifiBadgeId:I

.field private mLastWifiStrengthId:I

.field private final mMobileDataIconStartPadding:I

.field mMobileSignalGroup:[Landroid/widget/LinearLayout;

.field private final mMobileSignalGroupEndPadding:I

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNoSims:Landroid/widget/ImageView;

.field mNoSimsCombo:Landroid/view/View;

.field mNoSimsDark:Landroid/widget/ImageView;

.field private mNoSimsIcon:I

.field private mNoSimsVisible:Z

.field private mNotchEar:Z

.field private mNotchEarDual:Z

.field private mNotchEarDualEnable:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field private mReadIconsFromXML:Z

.field private final mSecondaryTelephonyPadding:I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSignalDualNotchGroup:Landroid/view/ViewGroup;

.field mSignalDualNotchMobile:Landroid/widget/ImageView;

.field mSignalDualNotchMobile2:Landroid/widget/ImageView;

.field mSignalDualNotchMobileInout:Landroid/widget/ImageView;

.field mSignalDualNotchMobileType:Landroid/widget/TextView;

.field mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

.field mSignalDualNotchMobileVoice:Landroid/widget/TextView;

.field mSignalSimpleDualMobile1:Landroid/widget/ImageView;

.field mSignalSimpleDualMobile2:Landroid/widget/ImageView;

.field mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

.field mSignalSimpleDualShowing:Z

.field private mSimCnt:I

.field private mSimpleDualMobileEnable:Z

.field private final mTintArea:Landroid/graphics/Rect;

.field private mVolteCount:I

.field mVowifi:[Landroid/widget/ImageView;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private final mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityEnabled:Z

.field mWifiAp:Landroid/widget/ImageView;

.field mWifiApConnectMark:Landroid/widget/ImageView;

.field private mWifiBadgeId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiIn:Z

.field mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

.field private mWifiName:Ljava/lang/String;

.field private mWifiNoNetwork:Z

.field private mWifiOut:Z

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBigRoamEnable:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/SignalClusterView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isBuildTest()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isVpnVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->notchEarDualEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDualSignalDescription:[Ljava/lang/String;

    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    new-array v2, v5, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualShowing:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    new-instance v2, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070269

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    const v2, 0x7f070268

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    const v2, 0x7f0704b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    const v2, 0x7f0703fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    const v2, 0x7f070405

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    const v2, 0x7f070287

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    const v2, 0x7f05001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDualEnable:Z

    const v2, 0x7f050014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetAble:Z

    const v2, 0x7f050007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBigRoamEnable:Z

    const v2, 0x7f050030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimpleDualMobileEnable:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f070434

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const-class v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v2, Lcom/android/systemui/util/DisableStateTracker;

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/util/DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateActivityEnabled()V

    const v2, 0x7f05001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mReadIconsFromXML:Z

    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-void
.end method

.method private apply()V
    .locals 13

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v5, v5, v6

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v5, v5, v12

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v6, 0x7f080643

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    const v6, 0x7f0805de

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_e

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v8, "SignalClusterView"

    const-string/jumbo v9, "vpn: %s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "VISIBLE"

    :goto_3
    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v5, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->ethernetEnable()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v8, "SignalClusterView"

    const-string/jumbo v9, "ethernet: %s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v5, :cond_11

    const-string/jumbo v5, "VISIBLE"

    :goto_5
    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_16

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    if-ne v5, v8, :cond_7

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    if-eq v5, v8, :cond_8

    :cond_7
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    if-ne v5, v11, :cond_12

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    :goto_6
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_13

    :cond_9
    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_14

    const v5, 0x7f080633

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    :cond_a
    :goto_8
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    if-eq v5, v11, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setWifiLabel(ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_9
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string/jumbo v8, "SignalClusterView"

    const-string/jumbo v9, "wifi: %s sig=%d"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_18

    const-string/jumbo v5, "VISIBLE"

    :goto_a
    aput-object v5, v10, v6

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->computeCapacity()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    iget v1, v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    move v5, v7

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v5, "GONE"

    goto/16 :goto_3

    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    :cond_11
    const-string/jumbo v5, "GONE"

    goto/16 :goto_5

    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    invoke-direct {p0, v5, v8, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setBadgedWifiIconForView(Landroid/widget/ImageView;II)V

    goto/16 :goto_6

    :cond_13
    move v5, v7

    goto/16 :goto_7

    :cond_14
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-eqz v5, :cond_15

    const v5, 0x7f080631

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    goto/16 :goto_8

    :cond_15
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_a

    const v5, 0x7f080635

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    goto/16 :goto_8

    :cond_16
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_17

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    if-eqz v5, :cond_17

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setWifiLabel(ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    :cond_17
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    invoke-virtual {v5, v12, v8}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setWifiLabel(ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    :cond_18
    const-string/jumbo v5, "GONE"

    goto/16 :goto_a

    :cond_19
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_1e

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v5, v8, :cond_1a

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    :cond_1a
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    :cond_1b
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    if-eqz v5, :cond_1d

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    if-nez v5, :cond_1c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getNoSimIcon()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    :cond_1c
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1d
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v8, :cond_21

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_21

    :goto_e
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    :cond_1f
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_1b

    :cond_20
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_21
    move v6, v7

    goto :goto_e
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v2, p1, v3

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060181

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    :cond_0
    sget v2, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3
.end method

.method private applyIconTint()V
    .locals 6

    const v5, 0x7f080627

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v2, 0x7f0805e8

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f080643

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiApConnectMark:Landroid/widget/ImageView;

    const v2, 0x7f08062d

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    const v2, 0x7f08062f

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    const v2, 0x7f080629

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTextColor(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    const v2, 0x7f0805de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimpleDualMobileEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobile1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobile2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private ethernetEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetAble:Z

    return v0
.end method

.method private static getColorAttr(Landroid/content/Context;I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private getNoSimIcon()I
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f05001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    return v3

    :cond_0
    const v5, 0x7f03004d

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    return v3

    :cond_1
    const/4 v5, 0x0

    aget-object v4, v1, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getNoSimIcon resId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method

.method private getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private getWifiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    const v2, 0x7f1105ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v3, v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-eq v3, v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isBuildTest()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    return v0
.end method

.method private isVpnVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isSilentVpnPackage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeScaleVpnAndNoSimsIcons()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private needShowSignalSimpleDualMobile()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    if-lt v3, v4, :cond_2

    sget-boolean v3, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private notchEarDualEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDualEnable:Z

    return v0
.end method

.method private refreshSignalSimpleDualMobileIcons()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobile1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobile2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private setBadgedWifiIconForView(Landroid/widget/ImageView;II)V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040125

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateActivityEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityEnabled:Z

    return-void
.end method


# virtual methods
.method protected computeCapacity()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimpleDualMobileEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualShowing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setMobile(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->needShowSignalSimpleDualMobile()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setMobile(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->refreshSignalSimpleDualMobileIcons()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualShowing:Z

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setMobile(Z)V

    goto :goto_0
.end method

.method protected couldHideVolte()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimpleDualMobileEnable:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isNotSignalSimpleDualShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualShowing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isVpnVisible()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    aget-object v2, v2, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "icon_blacklist"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    const-class v2, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DemoModeController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DemoModeController;->removeCallback(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    const v0, 0x7f0a033d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a0340

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v0, 0x7f0a033e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    const v0, 0x7f0a033f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const v0, 0x7f0a0328

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    const v0, 0x7f0a0341

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    const v0, 0x7f0a01b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiApConnectMark:Landroid/widget/ImageView;

    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a01ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0298

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobile1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobileContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalSimpleDualMobile2:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->maybeScaleVpnAndNoSimsIcons()V

    return-void
.end method

.method public onHotspotChanged(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$2;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v5, "icon_blacklist"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerHelper;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    const-string/jumbo v5, "airplane"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "mobile"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "ethernet"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eq v3, v5, :cond_3

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-nez v4, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mForceBlockWifi:Z

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-ne v1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsDefaultDataSim(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIsDefaultDataSim(Z)V

    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateVolteCount(Z)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIsImsRegisted(Z)V

    return-void
.end method

.method public setMobile(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setMobile(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 3

    move/from16 v0, p13

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    iget v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput p3, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, p10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_2

    :goto_1
    invoke-static {v1, p12}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz p5, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_2
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz p6, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_3
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    invoke-static {v1, p7}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    invoke-static {v1, p8}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    invoke-static {v1, p9}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 p12, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setNetworkNameVoice(Ljava/lang/String;)V

    return-void
.end method

.method public setNoSims(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNotchEar()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v1, v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->couldHideVolte()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setIsImsRegisted(IZ)V

    :cond_4
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setVolteNoService(IZ)V

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSpeechHd(IZ)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setSpeechHd(Z)V

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->setVowifi(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    const-class v4, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSignalState()Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;

    move-result-object v2

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->imsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->imsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIsImsRegisted(IZ)V

    :cond_4
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->vowifiMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->vowifiMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setVowifi(IZ)V

    :cond_5
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->speedHdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->speedHdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setSpeechHd(IZ)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimCnt:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimCnt:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->notchEarDualEnable()Z

    move-result v4

    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    if-eqz v6, :cond_b

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    :cond_9
    return-void

    :cond_a
    move v4, v5

    goto :goto_3

    :cond_b
    const/16 v5, 0x8

    goto :goto_4
.end method

.method public setTextColor(Landroid/widget/TextView;)V
    .locals 5

    const v1, 0x7f060189

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v2, p1, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_0

    const v1, 0x7f060181

    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v2, p1, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f06018a

    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setVolteNoService(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setVolteNoService(Z)V

    return-void
.end method

.method public setVowifi(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v1, v0, p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->iconOverlay:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/SignalClusterView;->getWifiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-eqz p5, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    const v2, 0x7f080646

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected updateIcon(Landroid/widget/ImageView;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060181

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    :cond_2
    sget v3, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public updateVolteCount(Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->STATUS_BAR_HIDE_VOLTE:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->computeCapacity()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVolteCount:I

    goto :goto_1
.end method
