.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
.super Landroid/telephony/mbms/DownloadStateCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FilteredDownloadStateCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/mbms/IDownloadStateCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/mbms/IDownloadStateCallback;I)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/telephony/mbms/DownloadStateCallback;-><init>(I)V

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    return-void
.end method


# virtual methods
.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->isFilterFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/telephony/mbms/IDownloadStateCallback;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v7

    invoke-virtual {p0, v7}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->onRemoteException(Landroid/os/RemoteException;)V

    goto :goto_13
.end method

.method protected abstract onRemoteException(Landroid/os/RemoteException;)V
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 6

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->isFilterFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->mCallback:Landroid/telephony/mbms/IDownloadStateCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/mbms/IDownloadStateCallback;->onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;->onRemoteException(Landroid/os/RemoteException;)V

    goto :goto_d
.end method
