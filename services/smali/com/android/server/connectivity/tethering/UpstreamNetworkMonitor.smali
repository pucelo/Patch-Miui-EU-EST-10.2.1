.class public Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;,
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_LISTEN_ALL:I = 0x1

.field private static final CALLBACK_MOBILE_REQUEST:I = 0x3

.field private static final CALLBACK_TRACK_DEFAULT:I = 0x2

.field private static final DBG:Z = false

.field public static final EVENT_ON_AVAILABLE:I = 0x1

.field public static final EVENT_ON_CAPABILITIES:I = 0x2

.field public static final EVENT_ON_LINKPROPERTIES:I = 0x3

.field public static final EVENT_ON_LOST:I = 0x4

.field public static final NOTIFY_LOCAL_PREFIXES:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultInternetNetwork:Landroid/net/Network;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDunRequired:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mLocalPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lcom/android/internal/util/StateMachine;

.field private mTetheringUpstreamNetwork:Landroid/net/Network;

.field private final mWhat:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleAvailable(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLost(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleResumed(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleSuspended(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    iput p4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .registers 6

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private static allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkState;

    iget-object v0, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_21
    return-object v3
.end method

.method private cm()Landroid/net/ConnectivityManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/net/NetworkState;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;"
        }
    .end annotation

    new-instance v3, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :try_start_1a
    invoke-static {v4}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1d} :catch_4c

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_22
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkState;

    const/4 v8, 0x4

    if-eq v4, v8, :cond_3f

    :try_start_31
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v4, v8, :cond_22

    :cond_3f
    iget-object v8, v6, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_22

    iput v4, v3, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    iput-object v6, v3, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_4b} :catch_6b

    return-object v3

    :catch_4c
    move-exception v0

    sget-object v8, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No NetworkCapabilities mapping for legacy type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_6b
    move-exception v2

    sget-object v8, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Null pointer exception in getActiveNetworkInfo"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_75
    return-object v3
.end method

.method private static getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    :cond_a
    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_e
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAvailable(ILandroid/net/Network;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v0, Landroid/net/NetworkState;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    packed-switch p1, :pswitch_data_2e

    :cond_1b
    :goto_1b
    :pswitch_1b
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    return-void

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_25

    return-void

    :cond_25
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    goto :goto_1b

    :pswitch_28
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_1b

    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method

.method private handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkState;

    if-eqz v7, :cond_13

    iget-object v0, v7, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    return-void

    :cond_14
    iget-object v8, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v0, Landroid/net/NetworkState;

    iget-object v3, v7, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object v2, p2

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    return-void
.end method

.method private handleLost(ILandroid/net/Network;)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    return-void
.end method

.method private handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 15

    const/4 v11, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkState;

    if-eqz v8, :cond_14

    iget-object v0, v8, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v7

    iget-object v0, v8, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "upstream network signal strength: %s -> %s"

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/net/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    iget-object v10, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v0, Landroid/net/NetworkState;

    iget-object v2, v8, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object v3, p2

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v11, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    return-void
.end method

.method private handleResumed(ILandroid/net/Network;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p2, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RESUMED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private handleSuspended(ILandroid/net/Network;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p2, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SUSPENDED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private notifyTarget(ILandroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    return-void
.end method

.method private notifyTarget(ILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private recomputeLocalPrefixes()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method private releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getLocalPrefixes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public mobileNetworkRequested()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public registerMobileNetworkRequest()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "registerMobileNetworkRequest() already registered"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_51

    const/4 v4, 0x4

    :goto_12
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-static {v4}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting mobile upstream network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    return-void

    :cond_51
    const/4 v4, 0x5

    goto :goto_12
.end method

.method public releaseMobileNetworkRequest()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred upstream type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    invoke-static {v3}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    sparse-switch v1, :sswitch_data_38

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    :goto_31
    :sswitch_31
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    return-object v1

    :sswitch_34
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    goto :goto_31

    :sswitch_data_38
    .sparse-switch
        -0x1 -> :sswitch_31
        0x4 -> :sswitch_34
        0x5 -> :sswitch_34
    .end sparse-switch
.end method

.method public setCurrentUpstream(Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    return-void
.end method

.method public start()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->stop()V

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public updateMobileRequiresDun(Z)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eq v1, p1, :cond_16

    const/4 v0, 0x1

    :goto_5
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mobileNetworkRequested()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method
