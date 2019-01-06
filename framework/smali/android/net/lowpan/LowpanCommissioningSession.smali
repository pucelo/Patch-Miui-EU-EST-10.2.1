.class public Landroid/net/lowpan/LowpanCommissioningSession;
.super Ljava/lang/Object;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanCommissioningSession$Callback;,
        Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
    }
.end annotation


# instance fields
.field private final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

.field private volatile mIsClosed:Z

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/lowpan/LowpanCommissioningSession;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    return v0
.end method

.method static synthetic -wrap0(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V

    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    invoke-direct {v1, p0, v2}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;)V

    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    iput-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    iput-object p3, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_2b

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    :goto_23
    :try_start_23
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    invoke-interface {v1, v2}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_33

    return-void

    :cond_2b
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    goto :goto_23

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private lockedCleanup()V
    .registers 7

    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v2, :cond_1b

    :try_start_5
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v3, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    invoke-interface {v2, v3}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_c} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_21

    :goto_c
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    iput-object v5, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    return-void

    :catch_21
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_27
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v2, :cond_d

    :try_start_5
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->closeCommissioningSession()V

    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V
    :try_end_d
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_f
    .catchall {:try_start_5 .. :try_end_d} :catchall_15

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :catch_f
    move-exception v1

    :try_start_10
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_18
    move-exception v0

    goto :goto_d
.end method

.method public getBeaconInfo()Landroid/net/lowpan/LowpanBeaconInfo;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method synthetic lambda$-android_net_lowpan_LowpanCommissioningSession_4529()V
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onClosed()V

    return-void
.end method

.method public sendToCommissioner([B)V
    .registers 5

    iget-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v2, :cond_9

    :try_start_4
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->sendToCommissioner([B)V
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_9} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_10
    move-exception v0

    goto :goto_9
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanCommissioningSession$Callback;Landroid/os/Handler;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v0, :cond_b

    if-eqz p2, :cond_d

    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    :goto_9
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b

    :cond_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    goto :goto_9

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :try_start_1e
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    goto :goto_9
.end method
