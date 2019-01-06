.class public Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z = false

.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final TAG:Ljava/lang/String; = "TetherInterfaceSM"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final WIGIG_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.50.1"

.field private static final WIGIG_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHwAddr:[B

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/internal/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMyUpstreamIfaceName:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;

.field private mV6OnlyTetherEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mV6OnlyTetherEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mMyUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mMyUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv4()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/net/IpPrefix;

    const-string/jumbo v1, "fe80::/64"

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mV6OnlyTetherEnabled:Z

    iput v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Z)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    iput-boolean p8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mV6OnlyTetherEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private configureIPv4(Z)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-ne v7, v9, :cond_20

    const-string/jumbo v3, "192.168.42.129"

    const/16 v5, 0x18

    :goto_d
    :try_start_d
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    if-nez v2, :cond_36

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v8, "Received null interface config"

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_6e

    return v10

    :cond_20
    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v7, :cond_2a

    const-string/jumbo v3, "192.168.43.1"

    const/16 v5, 0x18

    goto :goto_d

    :cond_2a
    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_35

    const-string/jumbo v3, "192.168.50.1"

    const/16 v5, 0x18

    goto :goto_d

    :cond_35
    return v9

    :cond_36
    :try_start_36
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v7, :cond_68

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    :goto_49
    const-string/jumbo v7, "running"

    invoke-virtual {v2, v7}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_56} :catch_6e

    new-instance v6, Landroid/net/RouteInfo;

    invoke-direct {v6, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    if-eqz p1, :cond_8d

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :goto_67
    return v9

    :cond_68
    if-eqz p1, :cond_89

    :try_start_6a
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_49

    :catch_6e
    move-exception v1

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error configuring interface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v10

    :cond_89
    :try_start_89
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_6e

    goto :goto_49

    :cond_8d
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v4}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_67
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    const/16 v9, 0x40

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    if-nez v5, :cond_16

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_d
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_68

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :try_start_30
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_37
    .catch Landroid/os/ServiceSpecificException; {:try_start_30 .. :try_end_37} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_42

    :goto_37
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v1, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_20

    :catch_42
    move-exception v4

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to remove local dns IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_37

    :cond_68
    if-eqz p2, :cond_d2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d2

    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_83

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_83
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :try_start_97
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9e
    .catch Landroid/os/ServiceSpecificException; {:try_start_97 .. :try_end_9e} :catch_a9
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9e} :catch_a9

    :goto_9e
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v1, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_87

    :catch_a9
    move-exception v4

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add local dns IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_d2
    :try_start_d2
    invoke-interface {v5}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_d5
    .catch Landroid/os/ServiceSpecificException; {:try_start_d2 .. :try_end_d5} :catch_d6
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d5} :catch_d6

    :cond_d5
    :goto_d5
    return-void

    :catch_d6
    move-exception v4

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "Failed to update local DNS caching server"

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_d5

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    goto :goto_d5
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5b

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v7, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v6

    :try_start_c
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v6}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2a

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v8, "Failed to remove %d IPv6 routes from local table."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2a} :catch_40

    :cond_2a
    :goto_2a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2e

    :catch_40
    move-exception v1

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_2a

    :cond_5b
    if-eqz p2, :cond_cd

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_cd

    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v7, v7, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_76
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v7, :cond_84

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v7, v7, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_89

    :cond_84
    sget-object v7, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_89
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_cd

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v5

    :try_start_95
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9c} :catch_b2

    :goto_9c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_a0

    :catch_b2
    move-exception v1

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_9c

    :cond_cd
    return-void
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomNonZeroByte()B

    move-result v3

    aput-byte v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_10
    invoke-static {v2, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v1

    const-string/jumbo v2, "TetherInterfaceSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to construct Inet6Address from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v2
.end method

.method private static getRandomNonZeroByte()B
    .registers 2

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-byte v0, v1

    if-eqz v0, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private resetLinkProperties()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private sendInterfaceState(I)V
    .registers 4

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    iget v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    return-void
.end method

.method private sendLinkProperties()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-static {v1, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    if-eqz p1, :cond_25

    iget-object v1, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    :goto_11
    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    if-eqz p1, :cond_1a

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    :cond_1a
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    :cond_22
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    return-void

    :cond_25
    move-object v1, v2

    goto :goto_11
.end method

.method private startIPv4()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_9} :catch_19

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v3, "Failed to find NetworkInterface"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return v5

    :catch_19
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error looking up NetworkInterfaces: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return v5

    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mHwAddr:[B
    :try_end_3f
    .catch Ljava/net/SocketException; {:try_start_37 .. :try_end_3f} :catch_5c

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    new-instance v2, Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mHwAddr:[B

    invoke-direct {v2, v3, v1, v4}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Ljava/lang/String;I[B)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return v5

    :catch_5c
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find hardware address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return v5

    :cond_7a
    const/4 v2, 0x1

    return v2
.end method

.method private stopIPv4()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    return-void
.end method

.method private stopIPv6()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mHwAddr:[B

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    :cond_13
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .registers 9

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v5, :cond_5

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    return-void

    :cond_e
    const/4 v3, 0x0

    if-eqz p1, :cond_5c

    new-instance v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v3}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v5

    iput v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v5

    iput-boolean v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2a

    new-instance v4, Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_5c
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .registers 3

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    return v0
.end method

.method public stop()V
    .registers 2

    const v0, 0x50066

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->removeMessages(I)V

    const v0, 0x50071

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->removeMessages(I)V

    const v0, 0x50068

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .registers 2

    const v0, 0x50067

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method
