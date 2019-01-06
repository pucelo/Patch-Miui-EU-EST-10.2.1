.class public Landroid/os/UpdateEngine;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngine$ErrorCodeConstants;,
        Landroid/os/UpdateEngine$UpdateStatusConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateEngine"

.field private static final UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private mUpdateEngine:Landroid/os/IUpdateEngine;

.field private mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

.field private final mUpdateEngineCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    const-string/jumbo v0, "android.os.UpdateEngineService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    return-void
.end method


# virtual methods
.method public applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .registers 15

    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bind(Landroid/os/UpdateEngineCallback;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
    .registers 7

    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v1, Landroid/os/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngine$1;-><init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    :try_start_a
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    iget-object v3, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    invoke-interface {v1, v3}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_14
    .catchall {:try_start_a .. :try_end_11} :catchall_1a

    move-result v1

    monitor-exit v2

    return v1

    :catch_14
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public cancel()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->cancel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetStatus()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resume()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public suspend()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unbind()Z
    .registers 6

    iget-object v3, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-nez v2, :cond_a

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    iget-object v4, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    invoke-interface {v2, v4}, Landroid/os/IUpdateEngine;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    monitor-exit v3

    return v1

    :catch_17
    move-exception v0

    :try_start_18
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method
