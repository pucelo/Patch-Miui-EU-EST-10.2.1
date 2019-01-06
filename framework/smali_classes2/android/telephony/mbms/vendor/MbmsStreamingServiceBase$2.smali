.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;
.super Landroid/telephony/mbms/MbmsStreamingSessionCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IMbmsStreamingSessionCallback;II)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onMiddlewareReady()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    invoke-interface {v1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->onMiddlewareReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onStreamingServicesUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    invoke-interface {v1, p1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->onStreamingServicesUpdated(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method
