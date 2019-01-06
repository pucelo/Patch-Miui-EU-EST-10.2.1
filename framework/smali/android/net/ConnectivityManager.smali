.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$Errors;,
        Landroid/net/ConnectivityManager$LegacyRequest;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$OnStartTetheringCallback;,
        Landroid/net/ConnectivityManager$PacketKeepalive;,
        Landroid/net/ConnectivityManager$PacketKeepaliveCallback;,
        Landroid/net/ConnectivityManager$TooManyRequestsException;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_SIGN_IN:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL"

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_PROMPT_LOST_VALIDATION:Ljava/lang/String; = "android.net.conn.PROMPT_LOST_VALIDATION"

.field public static final ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.conn.PROMPT_UNVALIDATED"

.field public static final ACTION_RESTRICT_BACKGROUND_CHANGED:Ljava/lang/String; = "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

.field private static final BASE:I = 0x80000

.field public static final CALLBACK_AVAILABLE:I = 0x80002

.field public static final CALLBACK_CAP_CHANGED:I = 0x80006

.field public static final CALLBACK_IP_CHANGED:I = 0x80007

.field public static final CALLBACK_LOSING:I = 0x80003

.field public static final CALLBACK_LOST:I = 0x80004

.field public static final CALLBACK_PRECHECK:I = 0x80001

.field public static final CALLBACK_RESUMED:I = 0x8000a

.field public static final CALLBACK_SUSPENDED:I = 0x80009

.field public static final CALLBACK_UNAVAIL:I = 0x80005

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_SUPL:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x80008

.field public static final EXTRA_ACTIVE_LOCAL_ONLY:Ljava/lang/String; = "localOnlyArray"

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "tetherArray"

.field public static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final EXTRA_CAPTIVE_PORTAL_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_URL"

.field public static final EXTRA_CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK:Ljava/lang/String; = "android.net.extra.NETWORK"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "android.net.extra.NETWORK_REQUEST"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_PROVISION_CALLBACK:Ljava/lang/String; = "extraProvisionCallback"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REM_TETHER_TYPE:Ljava/lang/String; = "extraRemTetherType"

.field public static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field public static final EXTRA_SET_ALARM:Ljava/lang/String; = "extraSetAlarm"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_RADIO_TYPE:I = 0x11

.field private static final MIN_NETWORK_TYPE:I = 0x0

.field public static final MULTIPATH_PREFERENCE_HANDOVER:I = 0x1

.field public static final MULTIPATH_PREFERENCE_PERFORMANCE:I = 0x4

.field public static final MULTIPATH_PREFERENCE_RELIABILITY:I = 0x2

.field public static final MULTIPATH_PREFERENCE_UNMETERED:I = 0x7

.field public static final NETID_UNSET:I = 0x0

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHERING_BLUETOOTH:I = 0x2

.field public static final TETHERING_INVALID:I = -0x1

.field public static final TETHERING_USB:I = 0x1

.field public static final TETHERING_WIFI:I = 0x0

.field public static final TETHERING_WIGIG:I = 0x3

.field public static final TETHER_CONNECT_STATE_CHANGED:Ljava/lang/String; = "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_PROVISION_FAILED:I = 0xb

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_SUPL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PROXY:I = 0x10

.field public static final TYPE_VPN:I = 0x11

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field private static sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field private static final sCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Landroid/net/ConnectivityManager;

.field private static sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLegacyTypeToCapability:Landroid/util/SparseIntArray;

.field private static final sLegacyTypeToTransport:Landroid/util/SparseIntArray;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNPManager:Landroid/net/INetworkPolicyManager;

.field private final mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static synthetic -get0(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;
    .registers 2

    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    sput-object p0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private static checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 2

    const-string/jumbo v0, "null NetworkCallback"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final checkChangePermission(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private checkLegacyRoutingApiAccess()V
    .registers 3

    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.permission.INJECT_OMADM_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    return-void
.end method

.method private static checkPendingIntentNotNull(Landroid/app/PendingIntent;)V
    .registers 2

    const-string/jumbo v0, "PendingIntent cannot be null."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static checkTimeout(I)V
    .registers 2

    const-string/jumbo v0, "timeoutMs must be strictly positive."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    return-void
.end method

.method private static convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;
    .registers 4

    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_2e

    const-string/jumbo v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown service error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_27
    new-instance v0, Landroid/net/ConnectivityManager$TooManyRequestsException;

    invoke-direct {v0}, Landroid/net/ConnectivityManager$TooManyRequestsException;-><init>()V

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method

.method public static final enforceChangePermission(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    return-void
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "Context cannot be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "callingPkg cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    const-string/jumbo v1, "android.permission.TETHER_PRIVILEGED"

    const-string/jumbo v2, "ConnectivityService"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    goto :goto_24
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .registers 8

    const/4 v1, -0x1

    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_4
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_40

    if-nez v0, :cond_10

    monitor-exit v3

    return-void

    :cond_10
    :try_start_10
    iget v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, v0, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    if-ne v2, p2, :cond_19

    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_40

    :cond_19
    monitor-exit v3

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expireRequest with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_40
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .registers 6

    const/4 v3, 0x0

    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_4
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    monitor-exit v2

    return-object v1

    :cond_12
    monitor-exit v2

    return-object v3

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCallbackName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_30

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "CALLBACK_PRECHECK"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "CALLBACK_AVAILABLE"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "CALLBACK_LOSING"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "CALLBACK_LOST"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "CALLBACK_UNAVAIL"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "CALLBACK_CAP_CHANGED"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "CALLBACK_IP_CHANGED"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "EXPIRE_LEGACY_REQUEST"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "CALLBACK_SUSPENDED"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "CALLBACK_RESUMED"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x80001
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method private getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;
    .registers 4

    sget-object v1, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    if-nez v0, :cond_12

    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-static {}, Landroid/net/ConnectivityThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;)V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    :cond_12
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getInstance()Landroid/net/ConnectivityManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No ConnectivityManager yet constructed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static getInstanceOrNull()Landroid/net/ConnectivityManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    monitor-exit p0

    return-object v1

    :cond_9
    :try_start_9
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_54

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "NONE"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "MOBILE"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "WIFI"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "MOBILE_MMS"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "MOBILE_SUPL"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "MOBILE_DUN"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "MOBILE_HIPRI"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "WIMAX"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "BLUETOOTH"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "DUMMY"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "ETHERNET"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "MOBILE_FOTA"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "MOBILE_IMS"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "MOBILE_CBS"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "WIFI_P2P"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "MOBILE_IA"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "MOBILE_EMERGENCY"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "PROXY"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "VPN"

    return-object v0

    :pswitch_data_54
    .packed-switch -0x1
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4c
        :pswitch_50
    .end packed-switch
.end method

.method public static getProcessDefaultNetwork()Landroid/net/Network;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    return-object v1
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_6

    return v4

    :cond_6
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_d

    return v4

    :cond_d
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_14

    return v4

    :cond_14
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string/jumbo v2, "enableCBS"

    const/16 v0, 0xc

    :cond_22
    :goto_22
    if-eqz v2, :cond_73

    invoke-direct {p0, v5, v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_73

    return v0

    :cond_35
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_42

    const-string/jumbo v2, "enableIMS"

    const/16 v0, 0xb

    goto :goto_22

    :cond_42
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string/jumbo v2, "enableFOTA"

    const/16 v0, 0xa

    goto :goto_22

    :cond_4f
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string/jumbo v2, "enableDUN"

    const/4 v0, 0x4

    goto :goto_22

    :cond_5b
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_66

    const-string/jumbo v2, "enableSUPL"

    const/4 v0, 0x3

    goto :goto_22

    :cond_66
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string/jumbo v2, "enableHIPRI"

    const/4 v0, 0x5

    goto :goto_22

    :cond_73
    return v4
.end method

.method public static isNetworkTypeMobile(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x11

    if-gt p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static isNetworkTypeWifi(I)Z
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
        0x1 -> :sswitch_5
        0xd -> :sswitch_5
    .end sparse-switch
.end method

.method private legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 8

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, -0x1

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xc

    return v0

    :cond_11
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0xb

    return v0

    :cond_1a
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa

    return v0

    :cond_23
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v4

    :cond_2a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_32

    return v3

    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    return v2

    :cond_3a
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_43

    return v5

    :cond_43
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0xd

    return v0

    :cond_4d
    return v1
.end method

.method private networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_79

    const-string/jumbo v0, "enableCBS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xc

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_13
    const-string/jumbo v0, "enableDUN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1c
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_22
    const-string/jumbo v0, "enableDUNAlways"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "enableFOTA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_3b
    const-string/jumbo v0, "enableHIPRI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_4a
    const-string/jumbo v0, "enableIMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v0, 0xb

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_5a
    const-string/jumbo v0, "enableMMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_69
    const-string/jumbo v0, "enableSUPL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_78
    return-object v1

    :cond_79
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8c

    const-string/jumbo v0, "p2p"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/16 v0, 0xd

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    :cond_8c
    return-object v1
.end method

.method public static networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;
    .registers 7

    const/4 v4, -0x1

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    const/4 v0, -0x1

    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_39

    const/4 v3, 0x1

    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown legacy type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v4, 0xc

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    return-object v1

    :cond_39
    const/4 v3, 0x0

    goto :goto_10
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .registers 5

    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v2

    if-nez v0, :cond_13

    const/4 v1, 0x0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_13
    iget-object v1, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-static {v0}, Landroid/net/ConnectivityManager$LegacyRequest;->-wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V

    const/4 v1, 0x1

    return v1
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .registers 5

    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    const-string/jumbo v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renewing request to seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    return-void
.end method

.method private requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .registers 13

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v7, -0x1

    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v5

    :try_start_7
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_2c

    move-result v7

    new-instance v9, Landroid/net/ConnectivityManager$LegacyRequest;

    invoke-direct {v9, v10}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    iput-object p1, v9, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iput v7, v9, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    iput v3, v9, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget-object v2, v9, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v6

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v9, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v0, v9, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_32

    return-object v10

    :catch_2c
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_32
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v9, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-direct {p0, p1, v0, v7}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    iget-object v0, v9, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method private sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .registers 10

    const/4 v5, 0x0

    if-ltz p3, :cond_37

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending expire msg with seqNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    const v2, 0x80008

    invoke-virtual {v0, v2, p2, v5, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_37
    return-void
.end method

.method private sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;
    .registers 18

    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v1, 0x2

    if-eq p4, v1, :cond_8

    if-eqz p1, :cond_4a

    :cond_8
    const/4 v1, 0x1

    :goto_9
    const-string/jumbo v2, "null NetworkCapabilities"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :try_start_f
    sget-object v10, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_5a
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_12} :catch_60

    :try_start_12
    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-static {p2}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v1

    sget-object v2, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    if-eq v1, v2, :cond_29

    const-string/jumbo v1, "ConnectivityManager"

    const-string/jumbo v2, "NetworkCallback was already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    new-instance v3, Landroid/os/Messenger;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    const/4 v1, 0x1

    if-ne p4, v1, :cond_4c

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v3, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v9

    :goto_3e
    if-eqz v9, :cond_45

    sget-object v1, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    invoke-static {p2, v9}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_57

    :try_start_48
    monitor-exit v10
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_49} :catch_5a
    .catch Landroid/os/ServiceSpecificException; {:try_start_48 .. :try_end_49} :catch_60

    return-object v9

    :cond_4a
    const/4 v1, 0x0

    goto :goto_9

    :cond_4c
    :try_start_4c
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v2, p1

    move v4, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_57

    move-result-object v9

    goto :goto_3e

    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v10

    throw v1
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5a} :catch_5a
    .catch Landroid/os/ServiceSpecificException; {:try_start_58 .. :try_end_5a} :catch_60

    :catch_5a
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_60
    move-exception v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    if-nez p0, :cond_b

    const/4 v1, 0x0

    :goto_4
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v2

    if-ne v1, v2, :cond_e

    return v4

    :cond_b
    iget v1, p0, Landroid/net/Network;->netId:I

    goto :goto_4

    :cond_e
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_35

    :try_start_14
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstance()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1f} :catch_2a

    :goto_1f
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    return v4

    :catch_2a
    move-exception v0

    const-string/jumbo v2, "ConnectivityManager"

    const-string/jumbo v3, "Can\'t set proxy properties"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :cond_35
    const/4 v2, 0x0

    return v2
.end method

.method public static setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    move-result v0

    return v0

    :cond_8
    iget v0, p0, Landroid/net/Network;->netId:I

    goto :goto_3
.end method

.method private unsupportedStartingFrom(I)V
    .registers 5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, p1, :cond_34

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This method is not supported in target SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and above"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    return-void
.end method


# virtual methods
.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 5

    new-instance v1, Landroid/net/ConnectivityManager$1;

    invoke-direct {v1, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    :try_start_5
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)Z
    .registers 3

    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    return v1

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public factoryReset()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->factoryReset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkForUid(I)Landroid/net/Network;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBackgroundDataSetting()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public getBoundNetworkForProcess()Landroid/net/Network;
    .registers 2

    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getCaptivePortalServerUrl()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .registers 2

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMobileDataEnabled()Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5b

    :try_start_9
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    const-string/jumbo v5, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMobileDataEnabled()+ subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    move-result v3

    const-string/jumbo v5, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMobileDataEnabled()- subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " retVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_54} :catch_55

    return v3

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_5b
    const-string/jumbo v5, "ConnectivityManager"

    const-string/jumbo v6, "getMobileDataEnabled()- remote exception retVal=false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getMultipathPreference(Landroid/net/Network;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .registers 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkPreference()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRestrictBackgroundStatus()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundByCaller()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActiveNetworkMeteredForUid(I)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isActiveNetworkMeteredForUid(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDefaultNetworkActive()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isNetworkActive()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTetheringSupported()Z
    .registers 5

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_6
    iget-object v3, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v3, v2}, Landroid/net/IConnectivityManager;->isTetheringSupported(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v3

    return v3

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_13
    move-exception v1

    const/4 v3, 0x0

    return v3
.end method

.method public registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 10

    const/4 v1, 0x0

    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    return-void
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .registers 15

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    return v0

    :catch_d
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 7

    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    :try_start_3
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v2, v3, p2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 11

    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 4

    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    :try_start_3
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 6

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkActivityListener;

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :goto_b
    const-string/jumbo v3, "Listener was not registered."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :try_start_11
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_1b

    return-void

    :cond_19
    const/4 v2, 0x0

    goto :goto_b

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportInetCondition(II)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 7

    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    :try_start_3
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v2, v3, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .registers 10

    invoke-static {p3}, Landroid/net/ConnectivityManager;->checkTimeout(I)V

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v4

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V
    .registers 13

    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p5}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 10

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v4

    new-instance v5, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v5, p0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V
    .registers 11

    invoke-static {p4}, Landroid/net/ConnectivityManager;->checkTimeout(I)V

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v4

    new-instance v5, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v5, p0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    return-void
.end method

.method public requestRouteToHost(II)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    :try_start_3
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    move-result v1

    return v1

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAirplaneMode(Z)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkPreference(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUsbTethering(Z)I
    .registers 7

    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbTethering caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v1}, Landroid/net/IConnectivityManager;->setUsbTethering(ZLjava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_27

    move-result v2

    return v2

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .registers 17

    new-instance v9, Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p1, p3, v0}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$PacketKeepalive;)V

    :try_start_6
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get1(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;

    move-result-object v3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p6 .. p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_20

    return-object v9

    :catch_20
    move-exception v8

    const-string/jumbo v0, "ConnectivityManager"

    const-string/jumbo v1, "Error starting packet keepalive: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v9}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
    .registers 11

    const-string/jumbo v3, "OnStartTetheringCallback cannot be null."

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/ConnectivityManager$2;

    invoke-direct {v2, p0, p4, p3}, Landroid/net/ConnectivityManager$2;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :try_start_b
    iget-object v3, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startTethering caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v3, p1, v2, p2, v1}, Landroid/net/IConnectivityManager;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string/jumbo v3, "ConnectivityManager"

    const-string/jumbo v4, "Exception trying to start tethering."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_30
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;I)I
    .registers 14

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-nez v1, :cond_32

    const-string/jumbo v4, "ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t satisfy startUsingNetworkFeature for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_32
    const/4 v4, -0x1

    if-eq p3, v4, :cond_45

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_45

    array-length v4, v3

    if-lez v4, :cond_45

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    :cond_45
    const/4 v2, 0x0

    sget-object v5, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_49
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$LegacyRequest;

    if-eqz v0, :cond_7a

    const-string/jumbo v4, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "renewing startUsingNetworkFeature request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    iget-object v4, v0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;
    :try_end_74
    .catchall {:try_start_49 .. :try_end_74} :catchall_9c

    if-eqz v4, :cond_78

    monitor-exit v5

    return v8

    :cond_78
    monitor-exit v5

    return v9

    :cond_7a
    :try_start_7a
    invoke-direct {p0, v1}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_9c

    move-result-object v2

    monitor-exit v5

    if-eqz v2, :cond_9f

    const-string/jumbo v4, "ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "starting startUsingNetworkFeature for request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catchall_9c
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_9f
    const-string/jumbo v4, "ConnectivityManager"

    const-string/jumbo v5, " request Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public stopTethering(I)V
    .registers 7

    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopTethering caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v1}, Landroid/net/IConnectivityManager;->stopTethering(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;I)I
    .registers 10

    const/4 v5, -0x1

    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_30

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t satisfy stopUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_30
    if-eq p3, v5, :cond_42

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_42

    array-length v2, v1

    if-lez v2, :cond_42

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    :cond_42
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    const/4 v2, 0x1

    return v2
.end method

.method public tether(Ljava/lang/String;)I
    .registers 7

    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tether caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_27

    move-result v2

    return v2

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .registers 2

    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_d
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v8

    if-eqz v8, :cond_51

    move v8, v6

    :goto_14
    const-string/jumbo v10, "NetworkCallback was not registered"

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v8

    sget-object v10, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    if-eq v8, v10, :cond_53

    :goto_22
    const-string/jumbo v7, "NetworkCallback was already unregistered"

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-object v6, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_32

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkRequest;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_4e

    goto :goto_32

    :catchall_4e
    move-exception v6

    monitor-exit v9

    throw v6

    :cond_51
    move v8, v7

    goto :goto_14

    :cond_53
    move v6, v7

    goto :goto_22

    :cond_55
    :try_start_55
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_4e

    :try_start_65
    iget-object v6, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v6, v3}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_70
    .catchall {:try_start_65 .. :try_end_6a} :catchall_4e

    :try_start_6a
    sget-object v6, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_76
    sget-object v6, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    invoke-static {p1, v6}, Landroid/net/ConnectivityManager$NetworkCallback;->-set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_4e

    monitor-exit v9

    return-void
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7

    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "untether caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_27

    move-result v2

    return v2

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public updateLockdownVpn()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
