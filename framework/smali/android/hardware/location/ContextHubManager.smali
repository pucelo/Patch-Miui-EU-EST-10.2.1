.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$1;,
        Landroid/hardware/location/ContextHubManager$Callback;,
        Landroid/hardware/location/ContextHubManager$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mService:Landroid/hardware/location/IContextHubService;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/hardware/location/ContextHubManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;)V

    iput-object v1, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    const-string/jumbo v1, "contexthub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IContextHubService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    :try_start_19
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    invoke-interface {v1, v2}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string/jumbo v1, "ContextHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not register callback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
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

.method public getContextHubHandles()[I
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I
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

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
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

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
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

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I
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

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_11

    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Max number of callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_18

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Max number of local callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_f
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
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

.method public unloadNanoApp(I)I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I
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

.method public unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eq p1, v0, :cond_11

    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Cannot recognize callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1a

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eq p1, v0, :cond_11

    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Cannot recognize local callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_17

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
