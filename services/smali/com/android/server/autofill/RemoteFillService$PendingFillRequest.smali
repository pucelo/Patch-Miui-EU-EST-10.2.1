.class final Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
.super Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFillRequest"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCancellation:Landroid/os/ICancellationSignal;

.field private final mRequest:Landroid/service/autofill/FillRequest;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    return-object p1
.end method

.method public constructor <init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 5

    invoke-super {p0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    return v2

    :cond_8
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_15

    monitor-exit v2

    if-eqz v0, :cond_13

    :try_start_10
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_18

    :cond_13
    :goto_13
    const/4 v2, 0x1

    return v2

    :catchall_15
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_18
    move-exception v1

    const-string/jumbo v2, "RemoteFillService"

    const-string/jumbo v3, "Error cancelling a fill request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_10

    monitor-exit v1

    if-eqz v0, :cond_c

    invoke-static {p1, v0}, Lcom/android/server/autofill/RemoteFillService;->-wrap3(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    :cond_c
    invoke-static {p1, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->-wrap1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void

    :catchall_10
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "RemoteFillService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run() called after canceled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_45

    :cond_2a
    monitor-exit v3

    return-void

    :cond_2c
    monitor-exit v3

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService;->-get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v2

    if-eqz v2, :cond_44

    :try_start_39
    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService;->-get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v2, v3, v4}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_48

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_48
    move-exception v0

    const-string/jumbo v2, "RemoteFillService"

    const-string/jumbo v3, "Error calling on fill request"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1, p0, v5}, Lcom/android/server/autofill/RemoteFillService;->-wrap1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    goto :goto_44
.end method
