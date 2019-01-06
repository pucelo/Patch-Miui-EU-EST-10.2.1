.class public Lcom/android/server/connectivity/tethering/OffloadController;
.super Ljava/lang/Object;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;,
        Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    }
.end annotation


# static fields
.field private static final ANYIP:Ljava/lang/String; = "0.0.0.0"

.field private static final DBG:Z

.field private static final EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigInitialized:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mControlInitialized:Z

.field private final mDownstreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mExemptPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

.field private mInterfaceQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLocalPrefixStrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNatUpdateCallbacksReceived:I

.field private mNatUpdateNetlinkErrors:I

.field private final mNms:Landroid/os/INetworkManagementService;

.field private final mStatsProvider:Landroid/net/ITetheringStatsProvider;

.field private mUpstreamLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateDataLimit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->forceTetherStatsPoll()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->pushAllDownstreamState()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/tethering/OffloadController;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/connectivity/tethering/OffloadController;->updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForAllUpstreams()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    iput-object p3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController;->TAG:Ljava/lang/String;

    invoke-virtual {p5, v1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    :try_start_43
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_52} :catch_53

    :goto_52
    return-void

    :catch_53
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot register offload stats provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_52
.end method

.method private computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    .registers 6

    sget-object v2, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    if-ne p1, v2, :cond_19

    const/4 v0, 0x1

    :goto_5
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadController;->computeLocalPrefixStrings(Ljava/util/Set;Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v1

    if-nez v0, :cond_1b

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_19
    const/4 v0, 0x0

    goto :goto_5

    :cond_1b
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setLocalPrefixes(Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static computeLocalPrefixStrings(Ljava/util/Set;Landroid/net/LinkProperties;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v7, v0, Ljava/net/Inet6Address;

    if-eqz v7, :cond_f

    new-instance v7, Landroid/net/IpPrefix;

    const/16 v8, 0x80

    invoke-direct {v7, v0, v8}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_34
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    invoke-virtual {v4}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_51
    return-object v3
.end method

.method private static connectionTimeoutUpdateSecondsFor(I)I
    .registers 2

    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_8

    const v0, 0x69780

    return v0

    :cond_8
    const/16 v0, 0xb4

    return v0
.end method

.method private currentUpstreamInterface()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method private forceTetherStatsPoll()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot report data limit reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private isOffloadDisabled()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->getDefaultTetherOffloadDisabled()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tether_offload_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private maybeUpdateDataLimit(Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    return v1

    :cond_14
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_27

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_27
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setDataLimit(Ljava/lang/String;J)Z

    move-result v1

    return v1
.end method

.method private maybeUpdateStats(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    if-eqz v0, :cond_1a

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->add(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V

    :cond_1a
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_c

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception v0

    :cond_c
    const/4 v2, 0x0

    return-object v2
.end method

.method private static protoNameFor(I)Ljava/lang/String;
    .registers 2

    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "UDP"

    return-object v0

    :cond_8
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_10

    const-string/jumbo v0, "TCP"

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private pushAllDownstreamState()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method private pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 10

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    :goto_a
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_12

    :cond_38
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_a

    :cond_3b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3f

    :cond_65
    return-void
.end method

.method private pushUpstreamParameters(Ljava/lang/String;)Z
    .registers 19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    const-string/jumbo v13, ""

    const-string/jumbo v14, "0.0.0.0"

    const-string/jumbo v15, "0.0.0.0"

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    invoke-direct/range {p0 .. p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    return v7

    :cond_21
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    instance-of v12, v3, Ljava/net/Inet4Address;

    if-eqz v12, :cond_34

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    :cond_48
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_54
    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    invoke-virtual {v5}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v12

    if-eqz v12, :cond_76

    move-object v10, v1

    goto :goto_54

    :cond_76
    invoke-virtual {v5}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8b

    const/4 v11, 0x0

    :cond_8b
    invoke-virtual {v12, v2, v9, v10, v11}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_92

    return v8

    :cond_92
    invoke-direct/range {p0 .. p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateDataLimit(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Setting data limit for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " failed, disabling offload."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    :cond_c2
    return v8
.end method

.method private static shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private started()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 18

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/OffloadController;->protoNameFor(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_20

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown NAT update callback protocol: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/OffloadController;->parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-nez v2, :cond_40

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse IPv4 address: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-static {p3}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid src port: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_60
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/tethering/OffloadController;->parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    if-nez v4, :cond_82

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse IPv4 address: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_82
    invoke-static/range {p5 .. p5}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v1

    if-nez v1, :cond_a4

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid dst port: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_a4
    iget v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    const-string/jumbo v1, "%s (%s, %s) -> (%s, %s)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x2

    aput-object v5, v3, v11

    const/4 v5, 0x3

    aput-object p4, v3, v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x4

    aput-object v5, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/OffloadController;->connectionTimeoutUpdateSecondsFor(I)I

    move-result v6

    move v1, p1

    move v3, p3

    move/from16 v5, p5

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/ConntrackMessage;->newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B

    move-result-object v8

    :try_start_d7
    sget v1, Landroid/system/OsConstants;->NETLINK_NETFILTER:I

    invoke-static {v1, v8}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_dc
    .catch Landroid/system/ErrnoException; {:try_start_d7 .. :try_end_dc} :catch_dd

    :goto_dc
    return-void

    :catch_dd
    move-exception v7

    iget v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error updating NAT conntrack entry >"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "<: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NAT timeout update callbacks received: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NAT timeout update netlink errors: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    goto :goto_dc
.end method

.method private updateStatsForAllUpstreams()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method private updateStatsForCurrentUpstream()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->isOffloadDisabled()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "Offload disabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Offload HALs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_b8

    const-string/jumbo v3, "started"

    :goto_22
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current upstream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exempt prefixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NAT timeout update callbacks received during the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_c0

    const-string/jumbo v3, "current"

    :goto_76
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offload session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NAT timeout update netlink errors during the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_c4

    const-string/jumbo v3, "current"

    :goto_9f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offload session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b8
    const-string/jumbo v3, "not started"

    goto/16 :goto_22

    :cond_bd
    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_c0
    const-string/jumbo v3, "last"

    goto :goto_76

    :cond_c4
    const-string/jumbo v3, "last"

    goto :goto_9f
.end method

.method public notifyDownstreamLinkProperties(Landroid/net/LinkProperties;)V
    .registers 6

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v2

    if-nez v2, :cond_1f

    return-void

    :cond_1f
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public removeDownstreamInterface(Ljava/lang/String;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method public setLocalPrefixes(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    return-void
.end method

.method public setUpstreamLinkProperties(Landroid/net/LinkProperties;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1b

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    :cond_1b
    iput-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/android/server/connectivity/tethering/OffloadController;->EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    sget-object v2, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z

    return-void
.end method

.method public start()Z
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    return v1

    :cond_9
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->isOffloadDisabled()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload disabled"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    return v3

    :cond_18
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->initOffloadConfig()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload config not supported"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    return v3

    :cond_34
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadController$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/tethering/OffloadController$1;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload control not supported"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    :goto_52
    return v0

    :cond_53
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload started"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    iput v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    goto :goto_52
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->stopOffloadControl()V

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload stopped"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
