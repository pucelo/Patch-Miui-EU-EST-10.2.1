.class public Landroid/service/oemlock/OemLockManager;
.super Ljava/lang/Object;
.source "OemLockManager.java"


# instance fields
.field private mService:Landroid/service/oemlock/IOemLockService;


# direct methods
.method public constructor <init>(Landroid/service/oemlock/IOemLockService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    return-void
.end method


# virtual methods
.method public isDeviceOemUnlocked()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1}, Landroid/service/oemlock/IOemLockService;->isDeviceOemUnlocked()Z
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

.method public isOemUnlockAllowed()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowed()Z
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

.method public isOemUnlockAllowedByCarrier()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByCarrier()Z
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

.method public isOemUnlockAllowedByUser()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByUser()Z
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

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1, p1, p2}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1, p1}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByUser(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
