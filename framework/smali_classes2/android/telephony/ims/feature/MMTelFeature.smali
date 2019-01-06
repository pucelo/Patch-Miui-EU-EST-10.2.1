.class public Landroid/telephony/ims/feature/MMTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MMTelFeature.java"

# interfaces
.implements Landroid/telephony/ims/feature/IMMTelFeature;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2

    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession(I)V
    .registers 2

    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onFeatureRemoved()V
    .registers 1

    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public turnOffIms()V
    .registers 1

    return-void
.end method

.method public turnOnIms()V
    .registers 1

    return-void
.end method
