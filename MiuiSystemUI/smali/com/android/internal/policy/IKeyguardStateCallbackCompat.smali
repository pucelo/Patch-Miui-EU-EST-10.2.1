.class public Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
.super Ljava/lang/Object;
.source "IKeyguardStateCallbackCompat.java"


# instance fields
.field private mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V

    return-void
.end method
