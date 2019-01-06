.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v12, :cond_7

    return-void

    :cond_7
    iget v12, p1, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_9e

    const-string/jumbo v10, "AudioEffect-JAVA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleMessage() Unknown event type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void

    :pswitch_29
    const/4 v1, 0x0

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v12, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2f
    iget-object v13, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v13}, Landroid/media/audiofx/AudioEffect;->-get1(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_42

    move-result-object v1

    monitor-exit v12

    if-eqz v1, :cond_28

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_45

    :goto_3e
    invoke-interface {v1, v12, v10}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_28

    :catchall_42
    move-exception v10

    monitor-exit v12

    throw v10

    :cond_45
    move v10, v11

    goto :goto_3e

    :pswitch_47
    const/4 v0, 0x0

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v12, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_4d
    iget-object v13, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v13}, Landroid/media/audiofx/AudioEffect;->-get0(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_60

    move-result-object v0

    monitor-exit v12

    if-eqz v0, :cond_28

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_63

    :goto_5c
    invoke-interface {v0, v12, v10}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_28

    :catchall_60
    move-exception v10

    monitor-exit v12

    throw v10

    :cond_63
    move v10, v11

    goto :goto_5c

    :pswitch_65
    const/4 v4, 0x0

    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v10, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_6b
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v10}, Landroid/media/audiofx/AudioEffect;->-get2(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_9b

    move-result-object v4

    monitor-exit v12

    if-eqz v4, :cond_28

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v2, v11}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    const/4 v10, 0x4

    invoke-static {v2, v10}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    const/16 v10, 0x8

    invoke-static {v2, v10}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v9

    new-array v3, v5, [B

    new-array v8, v9, [B

    const/16 v10, 0xc

    invoke-static {v2, v10, v3, v11, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v2, v7, v8, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v4, v10, v6, v3, v8}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    goto :goto_28

    :catchall_9b
    move-exception v10

    monitor-exit v12

    throw v10

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_47
        :pswitch_29
        :pswitch_65
    .end packed-switch
.end method
