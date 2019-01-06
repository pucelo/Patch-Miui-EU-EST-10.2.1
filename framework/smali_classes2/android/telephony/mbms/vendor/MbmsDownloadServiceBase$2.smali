.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;
.super Landroid/telephony/mbms/MbmsDownloadSessionCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onFileServicesUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v1, p1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method

.method public onMiddlewareReady()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onMiddlewareReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    goto :goto_5
.end method
