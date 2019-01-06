.class Landroid/telephony/mbms/InternalDownloadStateCallback$1;
.super Ljava/lang/Object;
.source "InternalDownloadStateCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadStateCallback;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadStateCallback;

.field final synthetic val$currentDecodedSize:I

.field final synthetic val$currentDownloadSize:I

.field final synthetic val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic val$fullDecodedSize:I

.field final synthetic val$fullDownloadSize:I

.field final synthetic val$request:Landroid/telephony/mbms/DownloadRequest;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadStateCallback;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 8

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadStateCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$currentDownloadSize:I

    iput p5, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$fullDownloadSize:I

    iput p6, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$currentDecodedSize:I

    iput p7, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$fullDecodedSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadStateCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadStateCallback;->-get0(Landroid/telephony/mbms/InternalDownloadStateCallback;)Landroid/telephony/mbms/DownloadStateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v3, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$currentDownloadSize:I

    iget v4, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$fullDownloadSize:I

    iget v5, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$currentDecodedSize:I

    iget v6, p0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;->val$fullDecodedSize:I

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/mbms/DownloadStateCallback;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    return-void
.end method
