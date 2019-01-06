.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;
.super Landroid/telephony/mbms/StreamingServiceCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/StreamingServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v1, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onError(ILjava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v1, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onMediaDescriptionUpdated()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onStreamMethodUpdated(I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v1, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onStreamStateUpdated(II)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v1, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method
