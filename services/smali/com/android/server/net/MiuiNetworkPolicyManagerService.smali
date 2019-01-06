.class Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;,
        Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;
    }
.end annotation


# static fields
.field private static final BG_MIN_BANDWIDTH:J = 0x186a0L

.field private static final CLOUD_LOW_LATENCY_APPLIST_FOR_MOBILE:Ljava/lang/String; = "cloud_block_scan_applist_for_mobile"

.field private static final CLOUD_LOW_LATENCY_WHITELIST:Ljava/lang/String; = "cloud_lowlatency_whitelist"

.field private static final CLOUD_NETWORK_PRIORITY_ENABLED:Ljava/lang/String; = "cloud_network_priority_enabled"

.field private static final CLOUD_RESTRICT_WIFI_POWERSAVE_APPLIST:Ljava/lang/String; = "cloud_block_scan_applist"

.field private static final DEBUG:Z = false

.field private static final DISABLE_LIMIT_TIMEOUT:I = 0x1388

.field private static final DISABLE_POWER_SAVE_TIMEOUT:I = 0x1388

.field private static final ENABLE_LIMIT_TIMEOUT:I = 0x61a8

.field private static final FG_MAX_BANDWIDTH:J = 0x7a120L

.field private static final HISTORY_BANDWIDTH_MIN:J = 0x30d40L

.field private static final HISTORY_BANDWIDTH_SIZE:I = 0x14

.field private static final IS_QCOM:Z

.field private static final LATENCY_ACTION_CHANGE_LEVEL:Ljava/lang/String; = "com.android.phone.intent.action.CHANGE_LEVEL"

.field private static final LATENCY_DEFAULT:I = -0x1

.field private static final LATENCY_KEY_LEVEL_DL:Ljava/lang/String; = "Level_DL"

.field private static final LATENCY_KEY_LEVEL_UL:Ljava/lang/String; = "Level_UL"

.field private static final LATENCY_KEY_RAT_TYPE:Ljava/lang/String; = "Rat_type"

.field private static final LATENCY_OFF:I = 0x0

.field private static final LATENCY_ON:I = 0x1

.field private static final LATENCY_VALUE_L1:J = 0x1L

.field private static final LATENCY_VALUE_L2:J = 0x2L

.field private static final LATENCY_VALUE_L3:J = 0x3L

.field private static final LATENCY_VALUE_L4:J = 0x4L

.field private static final LATENCY_VALUE_WLAN:J = 0x1L

.field private static final LATENCY_VALUE_WWAN:J = 0x0L

.field private static final MSG_BANDWIDTH_POLL:I = 0x6

.field private static final MSG_DISABLE_LIMIT_TIMEOUT:I = 0x5

.field private static final MSG_DISABLE_POWER_SAVE_TIMEOUT:I = 0x8

.field private static final MSG_ENABLE_LIMIT_TIMEOUT:I = 0x4

.field private static final MSG_MOBILE_LATENCY_CHANGED:I = 0x9

.field private static final MSG_SET_TRAFFIC_POLICY:I = 0x7

.field private static final MSG_UID_DATA_ACTIVITY_CHANGED:I = 0x3

.field public static final MSG_UID_STATE_CHANGED:I = 0x1

.field public static final MSG_UID_STATE_GONED:I = 0x2

.field private static final NETWORK_PRIORITY_MODE_CLOSED:I = 0xff

.field private static final NETWORK_PRIORITY_MODE_FAST:I = 0x2

.field private static final NETWORK_PRIORITY_MODE_NORMAL:I = 0x1

.field private static final NETWORK_PRIORITY_MODE_WMM:I = 0x0

.field private static final NETWORK_PRIORITY_WHITELIST:Ljava/lang/String; = "cloud_network_priority_whitelist"

.field private static final NOTIFACATION_RECEIVER_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final POLL_BANDWIDTH_INTERVAL_SECS:I = 0x3

.field private static final POWER_SAVE_IDLETIMER_LABEL:Ljava/lang/String; = "ps"

.field private static final POWER_SAVE_IDLETIMER_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiNetworkPolicy"

.field private static final WMM_AC_BE:I = 0x0

.field private static final WMM_AC_VI:I = 0x1

.field private static final WMM_AC_VO:I = 0x2

.field private static mMobileLatencyState:I

.field private static sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# instance fields
.field private mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHistoryBandWidth:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mLastRxBytes:J

.field private mLimitEnabled:Z

.field private mLowLatencyApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowLatencyAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileLowLatencyApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileLowLatencyAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileNwReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedRestrictPowerSaveApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

.field private mNetworkPriorityMode:I

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerSaveEnabled:Z

.field private mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

.field private mTrafficPolicyMode:I

.field private mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUnRestrictApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnRestrictAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnected:Z

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/MiuiNetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get7()I
    .registers 1

    sget v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictAppsPN:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .registers 1

    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityCloudControl()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->removeUidState(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimit(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatency()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/net/MiuiNetworkPolicyManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updatePowerSaveForUidDataActivityChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/net/MiuiNetworkPolicyManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateUidState(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getMobileLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getNeedRestrictPowerSaveApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getUnRestrictedApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->calculateBandWidth()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableNetworkPriority(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, -0x1

    sput v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    const-string/jumbo v0, "qcom"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->IS_QCOM:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileNwReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiNetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    return-void
.end method

.method private addHistoryBandWidth(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private calculateBandWidth()V
    .registers 11

    const-wide/16 v8, 0x0

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-ltz v4, :cond_12

    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_3b

    :cond_12
    const-string/jumbo v4, "MiuiNetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rxByte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mLastRxBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v8, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    :cond_3b
    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_48

    cmp-long v4, v2, v8

    if-ltz v4, :cond_48

    iput-wide v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    return-void

    :cond_48
    iget-wide v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3

    div-long v0, v4, v6

    const-wide/32 v4, 0x30d40

    cmp-long v4, v0, v4

    if-ltz v4, :cond_5a

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->addHistoryBandWidth(J)V

    :cond_5a
    iput-wide v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLastRxBytes:J

    return-void
.end method

.method private enableBandwidthPoll(Z)V
    .registers 4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/32 v0, 0x30d40

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->addHistoryBandWidth(J)V

    :cond_18
    return-void
.end method

.method private enableMobileLowLatency(Z)V
    .registers 12

    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x1

    const-string/jumbo v2, "MiuiNetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enableMobileLowLatency enable = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ",mMobileLatencyState="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v8, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_64

    const/4 v1, 0x1

    :goto_2e
    sget v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    if-eq v2, v1, :cond_63

    sput v1, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLatencyState:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.phone.intent.action.CHANGE_LEVEL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "Rat_type"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v8, "Level_UL"

    if-eqz p1, :cond_66

    move-wide v2, v4

    :goto_53
    invoke-virtual {v0, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "Level_DL"

    if-eqz p1, :cond_68

    :goto_5b
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_63
    return-void

    :cond_64
    const/4 v1, 0x0

    goto :goto_2e

    :cond_66
    move-wide v2, v6

    goto :goto_53

    :cond_68
    move-wide v4, v6

    goto :goto_5b
.end method

.method private enableNetworkPriority(I)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled()Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v2

    if-eqz v4, :cond_42

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v8}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled()Z

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    if-eqz v3, :cond_4d

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v8}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    :cond_35
    :goto_35
    if-ne p1, v9, :cond_58

    invoke-direct {p0, v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableBandwidthPoll(Z)V

    :goto_3a
    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    if-eqz v1, :cond_41

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRuleGlobal()V

    :cond_41
    return-void

    :cond_42
    if-nez v4, :cond_16

    if-eqz v2, :cond_16

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v9}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    const/4 v1, 0x1

    goto :goto_16

    :cond_4d
    if-nez v3, :cond_35

    if-eqz v0, :cond_35

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v5, v9}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    const/4 v1, 0x1

    goto :goto_35

    :cond_58
    invoke-direct {p0, v8}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableBandwidthPoll(Z)V

    goto :goto_3a
.end method

.method private enablePowerSave(Z)V
    .registers 5

    const-string/jumbo v0, "MiuiNetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable ps, mPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    if-eq v0, p1, :cond_32

    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-virtual {v0, p1}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->enablePowerSave(Z)V

    :cond_32
    return-void
.end method

.method public static get()Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .registers 2

    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "MiuiNetworkPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_lowlatency_whitelist"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    :goto_21
    array-length v4, v1

    if-ge v0, v4, :cond_2c

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2c
    return-object v2
.end method

.method private getMobileLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_block_scan_applist_for_mobile"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x0

    :goto_21
    array-length v4, v3

    if-ge v2, v4, :cond_2c

    aget-object v4, v3, v2

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2c
    return-object v0
.end method

.method private getNeedRestrictPowerSaveApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_block_scan_applist"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x0

    :goto_21
    array-length v4, v3

    if-ge v2, v4, :cond_2c

    aget-object v4, v3, v2

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2c
    return-object v0
.end method

.method private getUnRestrictedApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_network_priority_whitelist"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    :goto_21
    array-length v4, v1

    if-ge v0, v4, :cond_2c

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2c
    return-object v2
.end method

.method private getWmmForUidState(II)I
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateWmmed(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLowLatencyApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private isLimitterEnabled()Z
    .registers 2

    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isLimitterEnabled(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isMobileLatencyAllowed()Z
    .registers 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->IS_QCOM:Z

    if-nez v0, :cond_6

    return v2

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_d

    return v2

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private isMobileLatencyEnabledForUid(II)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isPowerSaveRestrictedForUid(II)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiConnected:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNeedRestrictPowerSaveApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isStateUnRestrictedForUid(II)Z
    .registers 5

    const/4 v0, 0x0

    if-ltz p2, :cond_14

    const/4 v1, 0x4

    if-le p2, v1, :cond_15

    const/16 v1, 0x11

    if-ge p2, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUnRestrictApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private isStateWmmed(I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_7

    const/4 v1, 0x2

    if-gt p1, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private static isUidValidForRules(I)Z
    .registers 2

    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3fb

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0
.end method

.method private isWmmerEnabled()Z
    .registers 2

    iget v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isWmmerEnabled(I)Z
    .registers 3

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled(I)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method static make(Landroid/content/Context;)Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .registers 2

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    sget-object v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->sSelf:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    return-object v0
.end method

.method private networkPriorityCloudControl()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "cloud_network_priority_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mediatek"

    const-string/jumbo v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v0, "off"

    :cond_21
    :try_start_21
    const-string/jumbo v3, "sys.net.support.netprio"

    const-string/jumbo v2, "off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "false"

    :goto_30
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    const-string/jumbo v2, "true"
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_37} :catch_38

    goto :goto_30

    :catch_38
    move-exception v1

    const-string/jumbo v2, "MiuiNetworkPolicy"

    const-string/jumbo v3, "Failed to set network priority support config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method private networkPriorityMode()I
    .registers 8

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "cloud_network_priority_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "mediatek"

    const-string/jumbo v5, "vendor"

    invoke-static {v5}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string/jumbo v0, "off"

    :cond_21
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_57

    iget v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    if-eqz v4, :cond_33

    iget v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mTrafficPolicyMode:I

    return v4

    :cond_33
    const/4 v1, 0x0

    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v1, 0x1

    :cond_3e
    :goto_3e
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_network_priority_enabled"

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    return v3

    :cond_4c
    const-string/jumbo v4, "fast"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v1, 0x2

    goto :goto_3e

    :cond_57
    const/16 v4, 0xff

    return v4
.end method

.method private registerLowLatencyAppsChangedObserver()V
    .registers 6

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cloud_lowlatency_whitelist"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerMiuiOptimizationChangedObserver()V
    .registers 6

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->MIUI_OPTIMIZATION:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerMobileLatencyAppsChangedObserver()V
    .registers 6

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cloud_block_scan_applist_for_mobile"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerNetworkProrityModeChangedObserver()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cloud_network_priority_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_network_priority_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerRestrictPowerSaveAppsChangedObserver()V
    .registers 6

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$8;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cloud_block_scan_applist"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerUnRestirctAppsChangedObserver()V
    .registers 6

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cloud_network_priority_whitelist"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/MiuiNetworkPolicyManagerService$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeUidState(I)V
    .registers 6

    const/16 v3, 0x11

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_23

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    if-eq v1, v3, :cond_23

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyForUidStateChange(III)V

    :cond_23
    return-void
.end method

.method private updateLimit(Z)V
    .registers 10

    iget-boolean v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    if-eq v4, p1, :cond_41

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3a

    iget v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkPriorityMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    const-wide/32 v0, 0x30d40

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    if-lez v4, :cond_24

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHistoryBandWidth:Ljava/util/Deque;

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_24
    const-wide/16 v4, 0x50

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/32 v6, 0x7a120

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v6, 0x186a0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_3a
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/MiuiNetworkManagementService;->setLimit(ZJ)Z

    iput-boolean p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mLimitEnabled:Z

    :cond_41
    return-void
.end method

.method private updateLimitterForUidState(II)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isLimitterEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MiuiNetworkManagementService;->whiteListUid(IZ)Z

    :cond_f
    return-void
.end method

.method private updateMobileLatency()V
    .registers 7

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_32

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v5, 0x11

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-direct {p0, v3, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyStateForUidState(II)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_32
    return-void
.end method

.method private updateMobileLatencyForUidStateChange(III)V
    .registers 6

    invoke-static {p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyEnabledForUid(II)Z

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyEnabledForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyStateForUidState(II)V

    :cond_14
    return-void
.end method

.method private updateMobileLatencyStateForUidState(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyEnabledForUid(II)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enableMobileLowLatency(Z)V

    return-void
.end method

.method private updatePowerSaveForUidDataActivityChanged(IZ)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x11

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v0

    const-string/jumbo v2, "MiuiNetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update ps for data activity, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", restrict = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mPS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_61

    if-eqz v0, :cond_61

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    if-eqz v2, :cond_61

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    if-nez p2, :cond_60

    iget-boolean v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPowerSaveEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    goto :goto_60
.end method

.method private updatePowerSaveStateForUidState(II)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v3, "ps"

    const/4 v4, 0x2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiNetworkManagementService;->listenUidDataActivity(IILjava/lang/String;IZ)Z

    xor-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->enablePowerSave(Z)V

    return-void
.end method

.method private updateRuleGlobal()V
    .registers 7

    const/16 v5, 0x11

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_1d

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-direct {p0, v3, v5, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    return-void
.end method

.method private updateRulesForUidStateChange(III)V
    .registers 6

    invoke-static {p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v1

    if-eq v0, v1, :cond_13

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateWmmForUidState(II)V

    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isStateUnRestrictedForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_20

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateLimitterForUidState(II)V

    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isPowerSaveRestrictedForUid(II)Z

    move-result v1

    if-eq v0, v1, :cond_2d

    invoke-direct {p0, p1, p3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updatePowerSaveStateForUidState(II)V

    :cond_2d
    return-void
.end method

.method private updateUidState(II)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p2, :cond_1b

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateRulesForUidStateChange(III)V

    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->updateMobileLatencyForUidStateChange(III)V

    :cond_1b
    return-void
.end method

.method private updateWmmForUidState(II)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isWmmerEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getWmmForUidState(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/MiuiNetworkManagementService;->updateWmm(II)Z

    :cond_f
    return-void
.end method

.method private validatePriorityMode(I)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/16 v2, 0xff

    if-eq p1, v2, :cond_6

    move v0, v1

    goto :goto_6
.end method


# virtual methods
.method public setNetworkTrafficPolicy(I)Z
    .registers 6

    const/4 v3, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->validatePriorityMode(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0

    :cond_1a
    return v2
.end method

.method protected systemReady()V
    .registers 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "wifi.interface"

    const-string/jumbo v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mInterfaceName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mUidDataActivityObserver:Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/MiuiNetworkManagementService;->setNetworkEventObserver(Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;)V

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v3, v5}, Lcom/android/server/MiuiNetworkManagementService;->enableWmmer(Z)Z

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mNetworkManager:Lcom/android/server/MiuiNetworkManagementService;

    invoke-virtual {v3, v5}, Lcom/android/server/MiuiNetworkManagementService;->enableLimitter(Z)Z

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerNetworkProrityModeChangedObserver()V

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->networkPriorityCloudControl()V

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerUnRestirctAppsChangedObserver()V

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerLowLatencyAppsChangedObserver()V

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerRestrictPowerSaveAppsChangedObserver()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_4e

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMiuiOptimizationChangedObserver()V

    :cond_4e
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mSupport:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-virtual {v3}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->registerUidObserver()V

    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->isMobileLatencyAllowed()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMobileLatencyAppsChangedObserver()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileNwReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_8d
    return-void
.end method
