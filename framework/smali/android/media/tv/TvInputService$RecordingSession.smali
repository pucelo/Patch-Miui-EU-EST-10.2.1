.class public abstract Landroid/media/tv/TvInputService$RecordingSession;
.super Ljava/lang/Object;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordingSession"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1e

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    goto :goto_c
.end method

.method private initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 6

    iget-object v3, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1e
    :try_start_1e
    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    monitor-exit v3

    return-void
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyError(I)V
    .registers 6

    if-ltz p1, :cond_5

    const/4 v1, 0x2

    if-le p1, v1, :cond_27

    :cond_5
    const-string/jumbo v1, "TvInputService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyError - invalid error code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is changed to RECORDING_ERROR_UNKNOWN."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_27
    move v0, p1

    new-instance v1, Landroid/media/tv/TvInputService$RecordingSession$3;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$RecordingSession$3;-><init>(Landroid/media/tv/TvInputService$RecordingSession;I)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyRecordingStopped(Landroid/net/Uri;)V
    .registers 3

    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$2;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$2;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession$4;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTuned(Landroid/net/Uri;)V
    .registers 3

    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$1;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$1;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public abstract onRelease()V
.end method

.method public abstract onStartRecording(Landroid/net/Uri;)V
.end method

.method public abstract onStopRecording()V
.end method

.method public abstract onTune(Landroid/net/Uri;)V
.end method

.method public onTune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;)V

    return-void
.end method

.method release()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onRelease()V

    return-void
.end method

.method startRecording(Landroid/net/Uri;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onStartRecording(Landroid/net/Uri;)V

    return-void
.end method

.method stopRecording()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onStopRecording()V

    return-void
.end method

.method tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
