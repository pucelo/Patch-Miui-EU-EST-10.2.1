.class Lcom/android/server/broadcastradio/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.TunerCallback"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private final mNativeContext:J

.field private final mTuner:Lcom/android/server/broadcastradio/Tuner;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/Tuner;

    iput-object p2, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/Tuner;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mNativeContext:J

    return-void
.end method

.method private dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V
    .registers 5

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "BroadcastRadioService.TunerCallback"

    const-string/jumbo v2, "client died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private handleHwFailure()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->onError(I)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/Tuner;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/Tuner;->close()V

    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/Tuner;I)J
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not a binder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .registers 3

    iget-wide v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->nativeDetach(J)V

    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->nativeFinalize(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2499(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2650(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2820(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2972(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3122(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3268(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3430(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3585()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3715()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method public onAntennaState(Z)V
    .registers 4

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .registers 4

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onBackgroundScanComplete()V
    .registers 3

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 4

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 4

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .registers 4

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onError(I)V
    .registers 3

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;

    invoke-direct {v0, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onProgramListChanged()V
    .registers 3

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .registers 4

    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    return-void
.end method
