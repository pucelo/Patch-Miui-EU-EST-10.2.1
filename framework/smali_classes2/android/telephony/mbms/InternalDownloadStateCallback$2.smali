.class Landroid/telephony/mbms/InternalDownloadStateCallback$2;
.super Ljava/lang/Object;
.source "InternalDownloadStateCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadStateCallback;->onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadStateCallback;

.field final synthetic val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic val$request:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadStateCallback;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 5

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadStateCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadStateCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadStateCallback;->-get0(Landroid/telephony/mbms/InternalDownloadStateCallback;)Landroid/telephony/mbms/DownloadStateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v3, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$2;->val$state:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/mbms/DownloadStateCallback;->onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    return-void
.end method
