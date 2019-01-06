.class public Landroid/telephony/ims/ImsServiceProxyCompat;
.super Ljava/lang/Object;
.source "ImsServiceProxyCompat.java"

# interfaces
.implements Landroid/telephony/ims/feature/IMMTelFeature;


# static fields
.field private static final SERVICE_ID:I = 0x1


# instance fields
.field protected mBinder:Landroid/os/IBinder;

.field protected final mSlotId:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    iput-object p2, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .registers 3

    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsService;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method protected checkBinderConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "ImsServiceProxy is not available for that feature."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public endSession(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsService;->close(I)V

    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureStatus()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isConnected(II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z

    move-result v0

    return v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V

    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    return v0
.end method

.method public turnOffIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V

    return-void
.end method

.method public turnOnIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxyCompat;->checkBinderConnection()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxyCompat;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V

    return-void
.end method
