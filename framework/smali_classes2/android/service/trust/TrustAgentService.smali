.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$1;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final EXTRA_TOKEN_HANDLE:Ljava/lang/String; = "token_handle"

.field private static final EXTRA_TOKEN_REMOVED_RESULT:Ljava/lang/String; = "token_removed_result"

.field private static final EXTRA_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field private static final EXTRA_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field private static final MSG_CONFIGURE:I = 0x2

.field private static final MSG_DEVICE_LOCKED:I = 0x4

.field private static final MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final MSG_ESCROW_TOKEN_ADDED:I = 0x7

.field private static final MSG_ESCROW_TOKEN_REMOVED:I = 0x9

.field private static final MSG_ESCROW_TOKEN_STATE_RECEIVED:I = 0x8

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final MSG_UNLOCK_ATTEMPT:I = 0x1

.field private static final MSG_UNLOCK_LOCKOUT:I = 0x6

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final TOKEN_STATE_ACTIVE:I = 0x1

.field public static final TOKEN_STATE_INACTIVE:I = 0x0

.field public static final TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mManagingTrust:Z

.field private mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/trust/TrustAgentService;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    return v0
.end method

.method static synthetic -get4(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p1
.end method

.method static synthetic -set1(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addEscrowToken([BLandroid/os/UserHandle;)V
    .registers 7

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-nez v1, :cond_1b

    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Trust agent is not connected"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v1, p1, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->addEscrowToken([BI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_26
    .catchall {:try_start_1b .. :try_end_24} :catchall_18

    :goto_24
    monitor-exit v2

    return-void

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v1, "calling addEscrowToken"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_18

    goto :goto_24
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JI)V
    .registers 13

    iget-object v7, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v7

    throw v1

    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    if-eqz v1, :cond_2a

    :try_start_17
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3, p4}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JI)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_22
    .catchall {:try_start_17 .. :try_end_20} :catchall_10

    :goto_20
    monitor-exit v7

    return-void

    :catch_22
    move-exception v0

    :try_start_23
    const-string/jumbo v1, "calling enableTrust()"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    goto :goto_20

    :cond_2a
    new-instance v1, Landroid/service/trust/TrustAgentService$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JI)V

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_10

    goto :goto_20
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JZ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final isEscrowTokenActive(JLandroid/os/UserHandle;)V
    .registers 9

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-nez v1, :cond_1b

    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Trust agent is not connected"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v1, p1, p2, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->isEscrowTokenActive(JI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_26
    .catchall {:try_start_1b .. :try_end_24} :catchall_18

    :goto_24
    monitor-exit v2

    return-void

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v1, "calling isEscrowTokenActive"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_18

    goto :goto_24
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;)V

    return-object v0
.end method

.method public onConfigure(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .registers 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_c
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    const-string/jumbo v3, "android.permission.BIND_TRUST_AGENT"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not declared with the permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.BIND_TRUST_AGENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_53} :catch_53

    :catch_53
    move-exception v1

    iget-object v3, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get ServiceInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-void
.end method

.method public onDeviceLocked()V
    .registers 1

    return-void
.end method

.method public onDeviceUnlockLockout(J)V
    .registers 3

    return-void
.end method

.method public onDeviceUnlocked()V
    .registers 1

    return-void
.end method

.method public onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .registers 5

    return-void
.end method

.method public onEscrowTokenRemoved(JZ)V
    .registers 4

    return-void
.end method

.method public onEscrowTokenStateReceived(JI)V
    .registers 4

    return-void
.end method

.method public onTrustTimeout()V
    .registers 1

    return-void
.end method

.method public onUnlockAttempt(Z)V
    .registers 2

    return-void
.end method

.method public final removeEscrowToken(JLandroid/os/UserHandle;)V
    .registers 9

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-nez v1, :cond_1b

    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Trust agent is not connected"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v1, p1, p2, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->removeEscrowToken(JI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_26
    .catchall {:try_start_1b .. :try_end_24} :catchall_18

    :goto_24
    monitor-exit v2

    return-void

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v1, "callling removeEscrowToken"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_18

    goto :goto_24
.end method

.method public final revokeTrust()V
    .registers 4

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    :cond_a
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    if-eqz v1, :cond_13

    :try_start_e
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catchall {:try_start_e .. :try_end_13} :catchall_1d

    :cond_13
    :goto_13
    monitor-exit v2

    return-void

    :catch_15
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "calling revokeTrust()"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    goto :goto_13

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setManagingTrust(Z)V
    .registers 5

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eq v1, p1, :cond_12

    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    if-eqz v1, :cond_12

    :try_start_d
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    :cond_12
    :goto_12
    monitor-exit v2

    return-void

    :catch_14
    move-exception v0

    :try_start_15
    const-string/jumbo v1, "calling setManagingTrust()"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1c

    goto :goto_12

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final unlockUserWithToken(J[BLandroid/os/UserHandle;)V
    .registers 10

    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/service/trust/TrustAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "User already unlocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-object v3, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1b
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-nez v2, :cond_33

    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Trust agent is not connected"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_33
    :try_start_33
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, p1, p2, p3, v4}, Landroid/service/trust/ITrustAgentServiceCallback;->unlockUserWithToken(J[BI)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_3e
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    :goto_3c
    monitor-exit v3

    return-void

    :catch_3e
    move-exception v0

    :try_start_3f
    const-string/jumbo v2, "calling unlockUserWithToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_30

    goto :goto_3c
.end method
