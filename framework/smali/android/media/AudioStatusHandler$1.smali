.class Landroid/media/AudioStatusHandler$1;
.super Landroid/os/Handler;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v2, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v2}, Landroid/media/AudioStatusHandler;->-get4(Landroid/media/AudioStatusHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v2}, Landroid/media/AudioStatusHandler;->-get2(Landroid/media/AudioStatusHandler;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    invoke-virtual {v0}, Landroid/media/AudioStatusHandler$AudioState;->isActive()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler$AudioState;->onMessageReceived(Landroid/os/Message;)Z
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2b

    goto :goto_15

    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2e
    monitor-exit v3

    return-void
.end method
