.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$1;,
        Lcom/android/server/connectivity/Vpn$2;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$SystemServices;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final VPN_LAUNCH_IDLE_WHITELIST_DURATION:J = 0xea60L


# instance fields
.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageIntentReceiverRegistered:Z

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

.field private final mUserHandle:I

.field private mVpnUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Vpn;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/Vpn;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 11

    new-instance v5, Lcom/android/server/connectivity/Vpn$SystemServices;

    invoke-direct {v5, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILcom/android/server/connectivity/Vpn$SystemServices;)V
    .registers 12

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iput-object p5, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string/jumbo v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    :try_start_3e
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_6a

    :goto_43
    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "VPN"

    const-string/jumbo v3, ""

    const/16 v4, 0x11

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->loadAlwaysOnPackage()V

    return-void

    :catch_6a
    move-exception v0

    const-string/jumbo v1, "Vpn"

    const-string/jumbo v2, "Problem registering observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method private agentConnect()V
    .registers 13

    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_14
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    :goto_19
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v1, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_2f
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_35
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "VPN"

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_86

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "agentConnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void

    :cond_80
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_19

    :catchall_86
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private agentDisconnect()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "agentDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    :cond_19
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_16
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enforceControlPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_SETTINGS"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    return-object v0

    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 9

    const-string/jumbo v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    return v3

    :cond_e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_18
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1b} :catch_20
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1f
    return v2

    :catch_20
    move-exception v0

    const/4 v2, -0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_26
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_24
    return-object v3
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isRunningLocked()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadAlwaysOnPackage()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string/jumbo v5, "always_on_vpn_app"

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string/jumbo v5, "always_on_vpn_lockdown"

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecureGetIntForUser(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_25

    const/4 v0, 0x1

    :goto_1e
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;Z)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_1e

    :catchall_27
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v4, v14, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v5, v14, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v14, :cond_48

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v11, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_2a

    :cond_48
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v14, :cond_78

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_78

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_5a

    :cond_78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v14, :cond_a4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_8a

    :cond_a4
    if-nez v4, :cond_b9

    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_b9
    if-nez v5, :cond_ce

    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_ce
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v14, :cond_fb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_fb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e5

    :cond_fb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    return-object v11
.end method

.method private maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_36
    return-void
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    :cond_19
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_99

    if-eqz v1, :cond_8c

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$Connection;->-get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const v5, 0xffffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v1, v5, v4, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_f1
    .catchall {:try_start_1d .. :try_end_2f} :catchall_99

    :goto_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_99

    :cond_39
    :goto_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_9e
    .catchall {:try_start_39 .. :try_end_40} :catchall_99

    :goto_40
    :try_start_40
    const-string/jumbo v1, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Switched from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_99

    :try_start_71
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_c8
    .catchall {:try_start_71 .. :try_end_78} :catchall_99

    :goto_78
    const/4 v1, 0x0

    :try_start_79
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v4, "prepare"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_99

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_8c
    :try_start_8c
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_99

    goto :goto_39

    :catchall_99
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :catch_9e
    move-exception v0

    :try_start_9f
    const-string/jumbo v1, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to disallow UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to call protect() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    :catch_c8
    move-exception v0

    const-string/jumbo v1, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to allow UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to call protect() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_9f .. :try_end_f0} :catchall_99

    goto :goto_78

    :catch_f1
    move-exception v0

    goto/16 :goto_2f
.end method

.method private prepareStatusIntent()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    :cond_26
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private saveAlwaysOnPackage()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string/jumbo v3, "always_on_vpn_app"

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const-string/jumbo v4, "always_on_vpn_lockdown"

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    :goto_20
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/connectivity/Vpn$SystemServices;->settingsSecurePutIntForUser(Ljava/lang/String;II)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_29
    const/4 v2, 0x0

    goto :goto_20

    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_9

    return v3

    :cond_9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    :try_start_15
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_22

    if-eqz p1, :cond_58

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_21
    return v3

    :catch_22
    move-exception v0

    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating blocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_58
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_21
.end method

.method private setAlwaysOnPackageInternal(Ljava/lang/String;Z)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "[Legacy VPN]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not setting legacy VPN \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" as always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2d
    if-eqz p1, :cond_56

    invoke-virtual {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_36

    return v0

    :cond_36
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    :goto_38
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_5c

    :goto_3c
    iput-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    :goto_4d
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    return v2

    :cond_56
    const-string/jumbo p1, "[Legacy VPN]"

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    goto :goto_38

    :cond_5c
    move p2, v0

    goto :goto_3c

    :cond_5e
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private setVpnForcedLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedWithExemptionsLocked(ZLjava/util/List;)V

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_9
.end method

.method private setVpnForcedWithExemptionsLocked(ZLjava/util/List;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz p1, :cond_44

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    iget v4, v1, Landroid/net/UidRange;->start:I

    if-nez v4, :cond_1a

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v4, v1, Landroid/net/UidRange;->stop:I

    if-eqz v4, :cond_1a

    new-instance v4, Landroid/net/UidRange;

    iget v5, v1, Landroid/net/UidRange;->stop:I

    invoke-direct {v4, v7, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3c
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_44
    invoke-direct {p0, v6, v3}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    invoke-direct {p0, v7, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    return-void
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    invoke-virtual {v3, v0}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    return-object v2
.end method

.method private unregisterPackageChangeReceiverLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    :cond_e
    return-void
.end method

.method private updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 13

    iget-boolean v8, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v8, :cond_27

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v8, :cond_27

    const/4 v7, 0x1

    :goto_9
    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_13
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    if-nez v7, :cond_29

    const-string/jumbo v8, "Vpn"

    const/16 v9, 0x11

    invoke-virtual {v3, v8, v9, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_95

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_27
    const/4 v7, 0x0

    goto :goto_9

    :cond_29
    :try_start_29
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.settings.VPN_SETTINGS"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mSystemServices:Lcom/android/server/connectivity/Vpn$SystemServices;

    const/high16 v9, 0xc000000

    invoke-virtual {v8, v2, v9, v6}, Lcom/android/server/connectivity/Vpn$SystemServices;->pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v9, 0x10808a9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x104068f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x104068c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string/jumbo v9, "sys"

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v10, 0x1060161

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v8, "Vpn"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v3, v8, v10, v9, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_91
    .catchall {:try_start_29 .. :try_end_91} :catchall_95

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_95
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    monitor-exit p0

    return v0

    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    if-eqz p3, :cond_3b

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v6, :cond_22

    move v0, v2

    :cond_20
    :goto_20
    move v1, v2

    goto :goto_d

    :cond_22
    add-int/lit8 v5, v1, 0x1

    if-eq v2, v5, :cond_20

    new-instance v5, Landroid/net/UidRange;

    invoke-direct {v5, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_20

    :cond_30
    if-eq v0, v6, :cond_3a

    new-instance v5, Landroid/net/UidRange;

    invoke-direct {v5, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    if-eqz p4, :cond_7c

    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v4

    iget v0, v4, Landroid/net/UidRange;->start:I

    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_60

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_60
    new-instance v5, Landroid/net/UidRange;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v5, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    goto :goto_4b

    :cond_6d
    iget v5, v4, Landroid/net/UidRange;->stop:I

    if-gt v0, v5, :cond_3a

    new-instance v5, Landroid/net/UidRange;

    iget v6, v4, Landroid/net/UidRange;->stop:I

    invoke-direct {v5, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_7c
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 6

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_27

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    return v3

    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_27

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_25
    monitor-exit p0

    return v3

    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_12
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_4a

    move-result-object v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, p1, v7}, Lcom/android/server/connectivity/VpnInjector;->isSpecialUser(Landroid/content/Context;II)Z

    move-result v6

    if-nez v6, :cond_44

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_24

    :cond_44
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    goto :goto_24

    :catchall_4a
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_4f
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 30

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    move/from16 v25, v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_95

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f

    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    :cond_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_95

    move-result v24

    if-nez v24, :cond_33

    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    :cond_33
    :try_start_33
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v24, "android.net.VpnService"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_95

    move-result-wide v20

    :try_start_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-eqz v24, :cond_98

    new-instance v24, Ljava/lang/SecurityException;

    const-string/jumbo v25, "Restricted users cannot establish VPNs"

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6f} :catch_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_90

    :catch_6f
    move-exception v8

    :try_start_70
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v24

    :try_start_91
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception v24

    monitor-exit p0

    throw v24

    :cond_98
    :try_start_98
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    invoke-interface {v0, v12, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-nez v11, :cond_d4

    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_d4
    const-string/jumbo v24, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10e

    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " does not require "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_10e} :catch_6f
    .catchall {:try_start_98 .. :try_end_10e} :catchall_90

    :cond_10e
    :try_start_10e
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v18, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_146
    .catchall {:try_start_10e .. :try_end_146} :catchall_95

    move-result-object v22

    :try_start_147
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v25, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_170
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_147 .. :try_end_18a} :catch_18b
    .catchall {:try_start_147 .. :try_end_18a} :catchall_95

    goto :goto_170

    :catch_18b
    move-exception v10

    :try_start_18c
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    throw v10
    :try_end_1af
    .catchall {:try_start_18c .. :try_end_1af} :catchall_95

    :cond_1af
    :try_start_1af
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1cc

    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "At least one address must be specified"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_1cc
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    const v26, 0x4000001

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_217

    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot bind "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_217
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    if-eqz v16, :cond_259

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_259
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    if-eqz v17, :cond_273

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_273

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_273
    .catch Ljava/lang/RuntimeException; {:try_start_1af .. :try_end_273} :catch_18b
    .catchall {:try_start_1af .. :try_end_273} :catchall_95

    :cond_273
    :try_start_273
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_280
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_280} :catch_2b3
    .catch Ljava/lang/RuntimeException; {:try_start_273 .. :try_end_280} :catch_18b
    .catchall {:try_start_273 .. :try_end_280} :catchall_95

    :try_start_280
    const-string/jumbo v24, "Vpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Established by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b1
    .catchall {:try_start_280 .. :try_end_2b1} :catchall_95

    monitor-exit p0

    return-object v22

    :catch_2b3
    move-exception v9

    :try_start_2b4
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_2d8
    .catch Ljava/lang/RuntimeException; {:try_start_2b4 .. :try_end_2d8} :catch_18b
    .catchall {:try_start_2b4 .. :try_end_2d8} :catchall_95
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    :cond_8
    return-object v1
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_29

    if-nez v1, :cond_8

    monitor-exit p0

    return-object v2

    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    :goto_6
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceSettingsPermission()V

    if-nez p1, :cond_8

    return v11

    :cond_8
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_f
    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/4 v9, 0x0

    invoke-virtual {v3, p1, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_15} :catch_1f

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_1e

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x18

    if-ge v8, v9, :cond_42

    :cond_1e
    return v11

    :catch_1f
    move-exception v7

    const-string/jumbo v8, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t find \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\" when checking always-on support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_42
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.net.VpnService"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const/16 v9, 0x80

    invoke-virtual {v3, v1, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5e

    :cond_5d
    return v11

    :cond_5e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_62

    const-string/jumbo v8, "android.net.VpnService.SUPPORTS_ALWAYS_ON"

    invoke-virtual {v2, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_62

    return v11

    :cond_80
    return v12
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .registers 6

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_35

    if-nez v2, :cond_8

    monitor-exit p0

    return v3

    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_35

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    monitor-exit p0

    return v2

    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_35

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_33
    monitor-exit p0

    return v3

    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onUserAdded(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_47

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v3, v4, :cond_47

    monitor-enter p0

    :try_start_17
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_53

    if-eqz v3, :cond_41

    :try_start_1b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v3, :cond_41

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    invoke-virtual {v4, v3}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_48
    .catchall {:try_start_1b .. :try_end_41} :catchall_53

    :cond_41
    :goto_41
    :try_start_41
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_53

    monitor-exit p0

    :cond_47
    return-void

    :catch_48
    move-exception v0

    :try_start_49
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_53

    goto :goto_41

    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onUserRemoved(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v2, v3, :cond_24

    monitor-enter p0

    :try_start_17
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_30

    if-eqz v2, :cond_1e

    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_25
    .catchall {:try_start_1b .. :try_end_1e} :catchall_30

    :cond_1e
    :goto_1e
    :try_start_1e
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_30

    monitor-exit p0

    :cond_24
    return-void

    :catch_25
    move-exception v0

    :try_start_26
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Failed to remove restricted user to owner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_1e

    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUserStopped()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_48

    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_71

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    monitor-exit p0

    return v1

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_71

    monitor-exit p0

    return v2

    :cond_2d
    monitor-exit p0

    return v1

    :cond_2f
    :try_start_2f
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_71

    monitor-exit p0

    return v1

    :cond_48
    if-eqz p2, :cond_59

    :try_start_4a
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_71

    move-result v0

    if-eqz v0, :cond_5b

    :cond_59
    monitor-exit p0

    return v2

    :cond_5b
    :try_start_5b
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_6c

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_71

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6c

    monitor-exit p0

    return v1

    :cond_6c
    :try_start_6c
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_71

    monitor-exit p0

    return v2

    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    monitor-exit p0

    return v0

    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackageInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableTeardown(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return-void
.end method

.method public declared-synchronized setLockdown(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    return v6

    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1c
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "appops"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz p2, :cond_33

    move v5, v6

    :goto_2a
    const/16 v8, 0x2f

    invoke-virtual {v0, v8, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_35
    .catchall {:try_start_1c .. :try_end_2f} :catchall_5f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_33
    move v5, v7

    goto :goto_2a

    :catch_35
    move-exception v1

    :try_start_36
    const-string/jumbo v5, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to set app ops for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_5f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_5f
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3d

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_a
    if-nez p1, :cond_14

    :try_start_c
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3d

    :cond_11
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v0, 0x0

    :goto_1c
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget-object v1, p1, v0

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v2, Landroid/net/Network;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    aput-object v2, v1, v0
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_3d

    goto :goto_2a

    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startAlwaysOnVpn()Z
    .registers 15

    const/4 v12, 0x1

    const/4 v13, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5f

    move-result-object v3

    if-nez v3, :cond_b

    monitor-exit p0

    return v12

    :cond_b
    :try_start_b
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_5f

    monitor-exit p0

    return v13

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5f

    move-result v2

    if-eqz v2, :cond_24

    monitor-exit p0

    return v12

    :cond_24
    monitor-exit p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_29
    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    const-string/jumbo v8, "vpn"

    const-wide/32 v4, 0xea60

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.VpnService"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_8a

    :try_start_4c
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_57} :catch_64
    .catchall {:try_start_4c .. :try_end_57} :catchall_8a

    move-result-object v2

    if-eqz v2, :cond_62

    move v2, v12

    :goto_5b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_62
    move v2, v13

    goto :goto_5b

    :catch_64
    move-exception v0

    :try_start_65
    const-string/jumbo v2, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VpnService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_8a

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    :catchall_8a
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v6, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v14

    if-nez v14, :cond_2a

    const-string/jumbo v14, "no_config_vpn"

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v14

    if-eqz v14, :cond_33

    :cond_2a
    new-instance v14, Ljava/lang/SecurityException;

    const-string/jumbo v15, "Restricted users cannot establish VPNs"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_33
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, ""

    const-string/jumbo v12, ""

    const-string/jumbo v1, ""

    const-string/jumbo v10, ""

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_92

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USRPKEY_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    if-nez v13, :cond_f5

    const/4 v12, 0x0

    :cond_92
    :goto_92
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_bd

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "CACERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    if-nez v13, :cond_fd

    const/4 v1, 0x0

    :cond_bd
    :goto_bd
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    if-nez v13, :cond_105

    const/4 v10, 0x0

    :cond_e8
    :goto_e8
    if-eqz v8, :cond_ec

    if-nez v12, :cond_10d

    :cond_ec
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "Cannot load credentials"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_f5
    new-instance v12, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_92

    :cond_fd
    new-instance v1, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_bd

    :cond_105
    new-instance v10, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_e8

    :cond_10d
    if-eqz v1, :cond_ec

    if-eqz v10, :cond_ec

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v14, :pswitch_data_396

    :goto_119
    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v14, :pswitch_data_3a4

    :goto_121
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_159

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_159
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_174

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_174
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v7}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_17a
    const/4 v14, 0x6

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "udppsk"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v9, v15

    const-string/jumbo v14, "1701"

    const/4 v15, 0x5

    aput-object v14, v9, v15

    goto/16 :goto_119

    :pswitch_1a3
    const/16 v14, 0x8

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "udprsa"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    const/4 v14, 0x3

    aput-object v8, v9, v14

    const/4 v14, 0x4

    aput-object v12, v9, v14

    const/4 v14, 0x5

    aput-object v1, v9, v14

    const/4 v14, 0x6

    aput-object v10, v9, v14

    const-string/jumbo v14, "1701"

    const/4 v15, 0x7

    aput-object v14, v9, v15

    goto/16 :goto_119

    :pswitch_1cb
    const/16 v14, 0x9

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "xauthpsk"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v9, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x7

    aput-object v14, v9, v15

    const/16 v14, 0x8

    aput-object v3, v9, v14

    goto/16 :goto_119

    :pswitch_207
    const/16 v14, 0xb

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "xauthrsa"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    const/4 v14, 0x3

    aput-object v8, v9, v14

    const/4 v14, 0x4

    aput-object v12, v9, v14

    const/4 v14, 0x5

    aput-object v1, v9, v14

    const/4 v14, 0x6

    aput-object v10, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x7

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v14, v9, v15

    const-string/jumbo v14, ""

    const/16 v15, 0x9

    aput-object v14, v9, v15

    const/16 v14, 0xa

    aput-object v3, v9, v14

    goto/16 :goto_119

    :pswitch_243
    const/16 v14, 0x9

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "hybridrsa"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    const/4 v14, 0x3

    aput-object v1, v9, v14

    const/4 v14, 0x4

    aput-object v10, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v9, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x7

    aput-object v14, v9, v15

    const/16 v14, 0x8

    aput-object v3, v9, v14

    goto/16 :goto_119

    :pswitch_277
    const/16 v14, 0x14

    new-array v7, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v7, v14

    const-string/jumbo v14, "pptp"

    const/4 v15, 0x1

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v14, v7, v15

    const-string/jumbo v14, "1723"

    const/4 v15, 0x3

    aput-object v14, v7, v15

    const-string/jumbo v14, "name"

    const/4 v15, 0x4

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v7, v15

    const-string/jumbo v14, "password"

    const/4 v15, 0x6

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x7

    aput-object v14, v7, v15

    const-string/jumbo v14, "linkname"

    const/16 v15, 0x8

    aput-object v14, v7, v15

    const-string/jumbo v14, "vpn"

    const/16 v15, 0x9

    aput-object v14, v7, v15

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xa

    aput-object v14, v7, v15

    const-string/jumbo v14, "nodefaultroute"

    const/16 v15, 0xb

    aput-object v14, v7, v15

    const-string/jumbo v14, "usepeerdns"

    const/16 v15, 0xc

    aput-object v14, v7, v15

    const-string/jumbo v14, "idle"

    const/16 v15, 0xd

    aput-object v14, v7, v15

    const-string/jumbo v14, "1800"

    const/16 v15, 0xe

    aput-object v14, v7, v15

    const-string/jumbo v14, "mtu"

    const/16 v15, 0xf

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x10

    aput-object v14, v7, v15

    const-string/jumbo v14, "mru"

    const/16 v15, 0x11

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x12

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v14, :cond_307

    const-string/jumbo v14, "+mppe"

    :goto_301
    const/16 v15, 0x13

    aput-object v14, v7, v15

    goto/16 :goto_121

    :cond_307
    const-string/jumbo v14, "nomppe"

    goto :goto_301

    :pswitch_30b
    const/16 v14, 0x14

    new-array v7, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v7, v14

    const-string/jumbo v14, "l2tp"

    const/4 v15, 0x1

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v14, v7, v15

    const-string/jumbo v14, "1701"

    const/4 v15, 0x3

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v7, v15

    const-string/jumbo v14, "name"

    const/4 v15, 0x5

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v7, v15

    const-string/jumbo v14, "password"

    const/4 v15, 0x7

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v14, v7, v15

    const-string/jumbo v14, "linkname"

    const/16 v15, 0x9

    aput-object v14, v7, v15

    const-string/jumbo v14, "vpn"

    const/16 v15, 0xa

    aput-object v14, v7, v15

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xb

    aput-object v14, v7, v15

    const-string/jumbo v14, "nodefaultroute"

    const/16 v15, 0xc

    aput-object v14, v7, v15

    const-string/jumbo v14, "usepeerdns"

    const/16 v15, 0xd

    aput-object v14, v7, v15

    const-string/jumbo v14, "idle"

    const/16 v15, 0xe

    aput-object v14, v7, v15

    const-string/jumbo v14, "1800"

    const/16 v15, 0xf

    aput-object v14, v7, v15

    const-string/jumbo v14, "mtu"

    const/16 v15, 0x10

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x11

    aput-object v14, v7, v15

    const-string/jumbo v14, "mru"

    const/16 v15, 0x12

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x13

    aput-object v14, v7, v15

    goto/16 :goto_121

    :pswitch_data_396
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_1a3
        :pswitch_1cb
        :pswitch_207
        :pswitch_243
    .end packed-switch

    :pswitch_data_3a4
    .packed-switch 0x0
        :pswitch_277
        :pswitch_30b
        :pswitch_30b
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    const-string/jumbo v0, "LegacyVpnRunner"

    monitor-enter v0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method
