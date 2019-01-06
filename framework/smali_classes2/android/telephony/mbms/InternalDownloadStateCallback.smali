.class public Landroid/telephony/mbms/InternalDownloadStateCallback;
.super Landroid/telephony/mbms/IDownloadStateCallback$Stub;
.source "InternalDownloadStateCallback.java"


# instance fields
.field private final mAppCallback:Landroid/telephony/mbms/DownloadStateCallback;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsStopped:Z


# direct methods
.method static synthetic -get0(Landroid/telephony/mbms/InternalDownloadStateCallback;)Landroid/telephony/mbms/DownloadStateCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mAppCallback:Landroid/telephony/mbms/DownloadStateCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/telephony/mbms/DownloadStateCallback;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadStateCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mAppCallback:Landroid/telephony/mbms/DownloadStateCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v8, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/telephony/mbms/InternalDownloadStateCallback$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/mbms/InternalDownloadStateCallback$1;-><init>(Landroid/telephony/mbms/InternalDownloadStateCallback;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/mbms/InternalDownloadStateCallback$2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStateCallback$2;-><init>(Landroid/telephony/mbms/InternalDownloadStateCallback;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStateCallback;->mIsStopped:Z

    return-void
.end method
