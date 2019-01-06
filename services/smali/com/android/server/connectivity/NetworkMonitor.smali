.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private final mCaptivePortalHttpUrl:Ljava/net/URL;

.field private final mCaptivePortalHttpsUrl:Ljava/net/URL;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mCaptivePortalUserAgent:Ljava/lang/String;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field protected mIsCaptivePortalCheckEnabled:Z

.field private mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetwork:Landroid/net/Network;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mNextFallbackUrlIndex:I

.field private mReevaluateToken:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private mValidations:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .registers 11

    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;

    iget-object v3, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "captive_portal_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10c

    move v0, v1

    :goto_d5
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "captive_portal_use_https"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_10e

    :goto_e6
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackUrls(Landroid/content/Context;)[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    return-void

    :cond_10c
    move v0, v2

    goto :goto_d5

    :cond_10e
    move v1, v2

    goto :goto_e6
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "captive_portal_https_url"

    const-string/jumbo v1, "https://www.google.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "captive_portal_user_agent"

    const-string/jumbo v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p2

    goto :goto_a
.end method

.method private logNetworkEvent(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-direct {v1, v2, p1}, Landroid/net/metrics/NetworkEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    return-void
.end method

.method private logValidationProbe(JII)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v3

    iget-boolean v1, v3, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    invoke-direct {v0}, Landroid/net/metrics/ValidationProbeEvent;-><init>()V

    invoke-static {p3, v1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result v3

    iput v3, v0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput p4, v0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput-wide p1, v0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v3, v4, v2, v0}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    return-void
.end method

.method private makeCaptivePortalFallbackUrls(Landroid/content/Context;)[Ljava/net/URL;
    .registers 12

    const/4 v7, 0x0

    const-string/jumbo v3, ","

    const-string/jumbo v6, "captive_portal_fallback_url"

    const-string/jumbo v8, "http://www.google.com/gen_204"

    invoke-static {p1, v6, v8}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "captive_portal_fallback_url"

    const-string/jumbo v8, "http://www.google.com/gen_204"

    invoke-static {p1, v6, v8}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v7}, Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_27
    if-ge v6, v9, :cond_38

    aget-object v2, v8, v6

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_34

    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_34
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_38
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4f

    sget-object v6, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "could not create any url from %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/net/URL;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/net/URL;

    return-object v6
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_21

    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_9

    return-object v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    :cond_21
    return-object v3
.end method

.method private maybeLogEvaluationResult(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v3}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v1, v2, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->reset()V

    :cond_1f
    return-void
.end method

.method private networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .registers 4

    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    return v0

    :cond_b
    const/16 v0, 0xa

    return v0

    :cond_e
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x9

    return v0

    :cond_15
    const/16 v0, 0xb

    return v0
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .registers 4

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    return-object v1

    :cond_7
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v2, v2

    rem-int v0, v1, v2

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 6

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsProbe(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1

    :cond_e
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private sendDnsProbe(Ljava/lang/String;)V
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    return-void

    :cond_7
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Landroid/net/util/Stopwatch;

    invoke-direct {v10}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v10}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v9

    :try_start_15
    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v10, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    array-length v11, v1

    :goto_22
    if-ge v10, v11, :cond_36

    aget-object v0, v1, v10

    const/16 v12, 0x2c

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_36
    const/4 v8, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "OK "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_4f} :catch_71

    move-result-object v3

    :goto_50
    invoke-virtual {v9}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v6

    const-string/jumbo v10, "%dms %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {p0, v11, p1, v10}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    return-void

    :catch_71
    move-exception v4

    const/4 v8, 0x0

    const-string/jumbo v3, "FAIL"

    goto :goto_50
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .registers 22

    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "wifi_scan_always_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_11

    return-void

    :cond_11
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v12, :cond_16

    return-void

    :cond_16
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    packed-switch v12, :pswitch_data_fa

    return-void

    :pswitch_2a
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_81

    const-string/jumbo v12, "extra_ssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "extra_bssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_46
    const-string/jumbo v12, "extra_connectivity_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v13, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "extra_response_received"

    move/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v12, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p1, :cond_76

    const-string/jumbo v12, "extra_is_captive_portal"

    move/from16 v0, p2

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v12, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_76
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_81
    return-void

    :pswitch_82
    const-string/jumbo v12, "extra_network_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_97

    return-void

    :cond_97
    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9c
    :goto_9c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v12

    if-eqz v12, :cond_9c

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-le v11, v12, :cond_b4

    return-void

    :cond_b4
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v12, :cond_c5

    check-cast v6, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_9c

    :cond_c5
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v12, :cond_d6

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_9c

    :cond_d6
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    if-eqz v12, :cond_e7

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_9c

    :cond_e7
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v12, :cond_f8

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_9c

    :cond_f8
    return-void

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_82
        :pswitch_2a
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 25

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x2

    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_23
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_30} :catch_3f

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v19

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_4b

    return-object v18

    :catch_3f
    move-exception v16

    const-string/jumbo v3, "Error: probes wait interrupted!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v3

    :cond_4b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-nez v3, :cond_57

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_57
    return-object v19

    :cond_58
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v17

    if-eqz v17, :cond_6e

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_6e

    return-object v20

    :cond_6e
    :try_start_6e
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v3

    return-object v3

    :cond_80
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_86} :catch_88

    move-result-object v3

    return-object v3

    :catch_88
    move-exception v16

    const-string/jumbo v3, "Error: http or https probe wait interrupted!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v3
.end method

.method private validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method private validationLog(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    goto :goto_6
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 14

    const/4 v2, 0x1

    const/4 v12, 0x0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v1, :cond_f

    const-string/jumbo v1, "Validation disabled."

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->SUCCESS:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v1

    :cond_f
    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v10

    if-eqz v10, :cond_3d

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3d

    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    if-nez v9, :cond_3d

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v1

    :cond_3d
    if-nez v9, :cond_46

    if-eqz v0, :cond_43

    if-nez v8, :cond_46

    :cond_43
    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v1

    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-eqz v9, :cond_5e

    const/4 v1, 0x3

    invoke-direct {p0, v12, v9, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v11

    :cond_51
    :goto_51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    return-object v11

    :cond_5e
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v1, :cond_67

    invoke-direct {p0, v10, v8, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v11

    goto :goto_51

    :cond_67
    invoke-direct {p0, v10, v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_51

    new-instance v11, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitorInjector;->sendHttpProbe(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/util/LocalLog;)I

    move-result v1

    invoke-direct {v11, v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    goto :goto_51
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .registers 23

    const/4 v14, 0x0

    const/16 v5, 0x257

    const/4 v8, 0x0

    new-instance v15, Landroid/net/util/Stopwatch;

    invoke-direct {v15}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v15}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v7

    const/16 v15, -0xbe

    invoke-static {v15}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v6

    :try_start_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v14, v0

    const/4 v15, 0x3

    move/from16 v0, p2

    if-ne v0, v15, :cond_e8

    const/4 v15, 0x1

    :goto_27
    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v15, 0x2710

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v15, 0x2710

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    if-eqz v15, :cond_4a

    const-string/jumbo v15, "User-Agent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string/jumbo v15, "location"

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ret="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " request="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " headers="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0xc8

    if-ne v5, v15, :cond_c7

    const/4 v15, 0x3

    move/from16 v0, p2

    if-ne v0, v15, :cond_eb

    const-string/jumbo v15, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_c5} :catch_12b
    .catchall {:try_start_13 .. :try_end_c5} :catchall_155

    const/16 v5, 0xcc

    :cond_c7
    :goto_c7
    if-eqz v14, :cond_cc

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_cc
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :goto_cf
    invoke-virtual {v7}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    new-instance v15, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v5, v8, v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v15

    :cond_e8
    const/4 v15, 0x0

    goto/16 :goto_27

    :cond_eb
    :try_start_eb
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_104

    const-string/jumbo v15, "200 response with Content-length=0 interpreted as 204 response."

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xcc

    goto :goto_c7

    :cond_104
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v15, v16, v18

    if-nez v15, :cond_c7

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c7

    const-string/jumbo v15, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_128} :catch_12b
    .catchall {:try_start_eb .. :try_end_128} :catchall_155

    const/16 v5, 0xcc

    goto :goto_c7

    :catch_12b
    move-exception v4

    :try_start_12c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Probe failed with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_12c .. :try_end_149} :catchall_155

    const/16 v15, 0x257

    if-eqz v14, :cond_150

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_150
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_cf

    :catchall_155
    move-exception v15

    if-eqz v14, :cond_15b

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15b
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v15
.end method
