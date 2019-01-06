.class public Landroid/telephony/mbms/InternalStreamingSessionCallback;
.super Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;
.source "InternalStreamingSessionCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsStopped:Z


# direct methods
.method static synthetic -get0(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMiddlewareReady()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStreamingServicesUpdated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback;->mIsStopped:Z

    return-void
.end method
