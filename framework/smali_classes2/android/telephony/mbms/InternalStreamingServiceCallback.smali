.class public Landroid/telephony/mbms/InternalStreamingServiceCallback;
.super Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
.source "InternalStreamingServiceCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsStopped:Z


# direct methods
.method static synthetic -get0(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/telephony/mbms/StreamingServiceCallback;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mAppCallback:Landroid/telephony/mbms/StreamingServiceCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$1;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaDescriptionUpdated()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStreamMethodUpdated(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;

    invoke-direct {v1, p0, p1}, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStreamStateUpdated(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;-><init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback;->mIsStopped:Z

    return-void
.end method
