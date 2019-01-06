.class public Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
    }
.end annotation


# instance fields
.field private final mDownloadCallbackBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadCallbackDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public dispose(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;II)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I

    move-result v1

    return v1
.end method

.method public initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public listPendingDownloads(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppCallbackDied(II)V
    .registers 3

    return-void
.end method

.method public registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v6, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;

    invoke-direct {v6, p0, v4, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)V

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v6, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStateCallback;IILandroid/telephony/mbms/DownloadRequest;)V

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I

    move-result v1

    return v1
.end method

.method public requestUpdateFileServices(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setTempFileRootDirectory(ILjava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    if-nez v0, :cond_17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadStateCallback;

    if-nez v1, :cond_36

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStateCallback;)I

    move-result v2

    return v2
.end method
