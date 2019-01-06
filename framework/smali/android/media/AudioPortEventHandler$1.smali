.class Landroid/media/AudioPortEventHandler$1;
.super Landroid/os/Handler;
.source "AudioPortEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioPortEventHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioPortEventHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->-get0(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_3e

    :cond_23
    :goto_23
    monitor-exit p0

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v10, :cond_2d

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_41

    :cond_2d
    :goto_2d
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_46

    return-void

    :cond_37
    :try_start_37
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->-get0(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3e

    move-result-object v1

    goto :goto_23

    :catchall_3e
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_41
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v11, :cond_30

    goto :goto_2d

    :cond_46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v11, :cond_5c

    const/4 v7, 0x0

    invoke-static {v5, v3, v7}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v6

    if-eqz v6, :cond_5c

    return-void

    :cond_5c
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_b0

    :cond_61
    return-void

    :pswitch_62
    new-array v7, v9, [Landroid/media/AudioPort;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/AudioPort;

    const/4 v0, 0x0

    :goto_6b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7d

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7, v4}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPortListUpdate([Landroid/media/AudioPort;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_7d
    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v10, :cond_61

    :pswitch_81
    new-array v7, v9, [Landroid/media/AudioPatch;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPatch;

    const/4 v0, 0x0

    :goto_8a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_61

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPatchListUpdate([Landroid/media/AudioPatch;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :pswitch_9c
    const/4 v0, 0x0

    :goto_9d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_61

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onServiceDied()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_62
        :pswitch_81
        :pswitch_9c
        :pswitch_62
    .end packed-switch
.end method
