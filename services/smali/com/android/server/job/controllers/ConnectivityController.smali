.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$1;,
        Lcom/android/server/job/controllers/ConnectivityController$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Conn"

.field private static mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private mConnected:Z

.field private final mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mTrackedJobs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mValidated:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mValidated:Z

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnected:Z

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;
    .registers 5

    sget-object v1, Lcom/android/server/job/controllers/ConnectivityController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    if-nez v0, :cond_16

    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;

    :cond_16
    sget-object v0, Lcom/android/server/job/controllers/ConnectivityController;->mSingleton:Lcom/android/server/job/controllers/ConnectivityController;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 15

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6b

    const/4 v4, 0x1

    :goto_d
    iget-object v12, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v6, v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v12, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v6, v4}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v8

    if-eqz v8, :cond_6d

    iget-object v12, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    :goto_21
    if-eqz v0, :cond_6f

    const/16 v12, 0x10

    invoke-virtual {v0, v12}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    :goto_29
    if-eqz v5, :cond_71

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_2f
    if-eqz v2, :cond_73

    move v3, v11

    :goto_32
    if-eqz v2, :cond_75

    iget-object v12, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v6}, Landroid/net/ConnectivityManager;->isActiveNetworkMeteredForUid(I)Z

    move-result v7

    :goto_3a
    if-eqz v2, :cond_77

    iget-object v12, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v6}, Landroid/net/ConnectivityManager;->isActiveNetworkMeteredForUid(I)Z

    move-result v12

    xor-int/lit8 v10, v12, 0x1

    :goto_44
    if-eqz v2, :cond_79

    if-eqz v5, :cond_79

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v12

    xor-int/lit8 v9, v12, 0x1

    :goto_4e
    const/4 v1, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(Z)Z

    move-result v1

    invoke-virtual {p1, v7}, Lcom/android/server/job/controllers/JobStatus;->setMeteredConstraintSatisfied(Z)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {p1, v10}, Lcom/android/server/job/controllers/JobStatus;->setUnmeteredConstraintSatisfied(Z)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {p1, v9}, Lcom/android/server/job/controllers/JobStatus;->setNotRoamingConstraintSatisfied(Z)Z

    move-result v12

    or-int/2addr v1, v12

    const/16 v12, 0x3e8

    if-ne v6, v12, :cond_6a

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnected:Z

    iput-boolean v11, p0, Lcom/android/server/job/controllers/ConnectivityController;->mValidated:Z

    :cond_6a
    return v1

    :cond_6b
    const/4 v4, 0x0

    goto :goto_d

    :cond_6d
    const/4 v0, 0x0

    goto :goto_21

    :cond_6f
    const/4 v11, 0x0

    goto :goto_29

    :cond_71
    const/4 v2, 0x0

    goto :goto_2f

    :cond_73
    const/4 v3, 0x0

    goto :goto_32

    :cond_75
    const/4 v7, 0x0

    goto :goto_3a

    :cond_77
    const/4 v10, 0x0

    goto :goto_44

    :cond_79
    const/4 v9, 0x0

    goto :goto_4e
.end method

.method private updateTrackedJobs(I)V
    .registers 7

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_c
    if-ltz v1, :cond_27

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    if-ne p1, v3, :cond_24

    :cond_1f
    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_27
    if-eqz v0, :cond_2e

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit v4

    return-void

    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .registers 6

    const-string/jumbo v2, "Connectivity: connected="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnected:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, " validated="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mValidated:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "Tracking "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2c
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_8f

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string/jumbo v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string/jumbo v2, " from "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v2, ": C="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->needsAnyConnectivity()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, ": M="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->needsMeteredConnectivity()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, ": UM="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->needsUnmeteredConnectivity()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, ": NR="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->needsNonRoamingConnectivity()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_8f
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    :cond_12
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method public onNetworkActive()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_b
    if-ltz v0, :cond_23

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_23
    monitor-exit v3

    return-void

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method
