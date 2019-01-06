.class final Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IPlayerShell"
.end annotation


# instance fields
.field private volatile mIPlayer:Landroid/media/IPlayer;

.field final mMonitor:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method constructor <init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    iput-object p2, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->-wrap0(Landroid/media/AudioPlaybackConfiguration;)V

    :cond_9
    return-void
.end method

.method getIPlayer()Landroid/media/IPlayer;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    return-object v0
.end method

.method declared-synchronized monitorDeath()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    if-nez v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v1}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13
    .catchall {:try_start_7 .. :try_end_11} :catchall_3a

    :goto_11
    monitor-exit p0

    return-void

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    if-eqz v1, :cond_3d

    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not link to client death for piid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mMonitor:Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v3}, Landroid/media/AudioPlaybackConfiguration;->-get1(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_3a

    goto :goto_11

    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3d
    :try_start_3d
    invoke-static {}, Landroid/media/AudioPlaybackConfiguration;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_3a

    goto :goto_11
.end method

.method declared-synchronized release()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->mIPlayer:Landroid/media/IPlayer;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
