.class public Landroid/telephony/mbms/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"


# static fields
.field public static final BROADCAST_METHOD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingService"

.field public static final REASON_BY_USER_REQUEST:I = 0x1

.field public static final REASON_END_OF_SESSION:I = 0x2

.field public static final REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final REASON_OUT_OF_MEMORY:I = 0x4

.field public static final STATE_STALLED:I = 0x3

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final UNICAST_METHOD:I = 0x2


# instance fields
.field private final mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field private final mParentSession:Landroid/telephony/MbmsStreamingSession;

.field private mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

.field private final mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iput-object p3, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    iput-object p2, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iput-object p4, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    iput-object p5, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-void
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-object v0
.end method

.method public getInfo()Landroid/telephony/mbms/StreamingServiceInfo;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    return-object v0
.end method

.method public getPlaybackUri()Landroid/net/Uri;
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No streaming service attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v2, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v3, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v3}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1d

    move-result-object v1

    return-object v1

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "MbmsStreamingService"

    const-string/jumbo v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V

    return-object v4
.end method

.method public stopStreaming()V
    .registers 5

    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No streaming service attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v2, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v3, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v3}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->stopStreaming(ILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_20
    .catchall {:try_start_d .. :try_end_1a} :catchall_38

    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v1, "MbmsStreamingService"

    const-string/jumbo v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_38

    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    goto :goto_1f

    :catchall_38
    move-exception v1

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    throw v1
.end method
