.class public Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsMultiEndpointImplBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestImsExternalCallStateInfo()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
