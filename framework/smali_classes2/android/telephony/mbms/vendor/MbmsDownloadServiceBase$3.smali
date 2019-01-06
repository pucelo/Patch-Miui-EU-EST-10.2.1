.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;
.super Ljava/lang/Object;
.source "MbmsDownloadServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

.field final synthetic val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$uid:I

    iput-object p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    iput-object p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$uid:I

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->-get0(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->-get1(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;->val$callback:Landroid/telephony/mbms/IDownloadStateCallback;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
