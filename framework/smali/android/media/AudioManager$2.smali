.class Landroid/media/AudioManager$2;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_5
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get1(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_c
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get0(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_47

    const/4 v1, 0x0

    :goto_15
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get0(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_47

    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get0(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v3, v0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_44

    iget-object v3, v0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    iget-object v6, v0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-direct {v5, v6, p1}, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Ljava/util/List;)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v0, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_49

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_47
    monitor-exit v4

    return-void

    :catchall_49
    move-exception v3

    monitor-exit v4

    throw v3
.end method
