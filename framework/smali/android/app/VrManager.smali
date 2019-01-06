.class public Landroid/app/VrManager;
.super Ljava/lang/Object;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VrManager$CallbackEntry;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/VrStateCallback;",
            "Landroid/app/VrManager$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/service/vr/IVrManager;


# direct methods
.method public constructor <init>(Landroid/service/vr/IVrManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    iput-object p1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    return-void
.end method


# virtual methods
.method public getPersistentVrModeEnabled()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getPersistentVrModeEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public getVrModeEnabled()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getVrModeState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public registerVrStateCallback(Landroid/app/VrStateCallback;Landroid/os/Handler;)V
    .registers 8

    if-eqz p1, :cond_a

    iget-object v3, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    return-void

    :cond_b
    new-instance v1, Landroid/app/VrManager$CallbackEntry;

    invoke-direct {v1, p1, p2}, Landroid/app/VrManager$CallbackEntry;-><init>(Landroid/app/VrStateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_15
    iget-object v3, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v4, v1, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v4}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    iget-object v3, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v4, v1, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v3, v4}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    :try_start_25
    invoke-virtual {p0, p1}, Landroid/app/VrManager;->unregisterVrStateCallback(Landroid/app/VrStateCallback;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_23

    :catch_29
    move-exception v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_23
.end method

.method public setAndBindVrCompositor(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    if-nez p1, :cond_9

    :goto_5
    invoke-interface {v2, v1}, Landroid/service/vr/IVrManager;->setAndBindCompositor(Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v1

    goto :goto_5

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_8
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->setPersistentVrModeEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_5
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_5
.end method

.method public unregisterVrStateCallback(Landroid/app/VrStateCallback;)V
    .registers 6

    iget-object v2, p0, Landroid/app/VrManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VrManager$CallbackEntry;

    if-eqz v0, :cond_18

    :try_start_a
    iget-object v2, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v3, v0, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_1b

    :goto_11
    :try_start_11
    iget-object v2, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    iget-object v3, v0, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v1

    goto :goto_18

    :catch_1b
    move-exception v1

    goto :goto_11
.end method
