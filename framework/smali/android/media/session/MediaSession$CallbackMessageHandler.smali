.class Landroid/media/session/MediaSession$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessageHandler"
.end annotation


# static fields
.field private static final MSG_ADJUST_VOLUME:I = 0x15

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x2

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT:I = 0x17

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field private mCallback:Landroid/media/session/MediaSession$Callback;

.field final synthetic this$0:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;
    .registers 2

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V
    .registers 6

    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {v0, p0}, Landroid/media/session/MediaSession$Callback;->-set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_12a

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaSession$Command;

    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, v0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    iget-object v5, v0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_5

    :pswitch_16
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    goto :goto_5

    :pswitch_20
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPrepare()V

    goto :goto_5

    :pswitch_26
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_34
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_42
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_50
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    goto :goto_5

    :pswitch_56
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_64
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_72
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_5

    :pswitch_80
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    goto/16 :goto_5

    :pswitch_8f
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto/16 :goto_5

    :pswitch_96
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onStop()V

    goto/16 :goto_5

    :pswitch_9d
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto/16 :goto_5

    :pswitch_a4
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    goto/16 :goto_5

    :pswitch_ab
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    goto/16 :goto_5

    :pswitch_b2
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v2}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    goto/16 :goto_5

    :pswitch_b9
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    goto/16 :goto_5

    :pswitch_c8
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v3, v2}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    goto/16 :goto_5

    :pswitch_d3
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :pswitch_e2
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_e9
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_ff

    move-result-object v1

    monitor-exit v3

    if-eqz v1, :cond_5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    goto/16 :goto_5

    :catchall_ff
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_102
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_109
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_10e
    .catchall {:try_start_109 .. :try_end_10e} :catchall_11f

    move-result-object v1

    monitor-exit v3

    if-eqz v1, :cond_5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    goto/16 :goto_5

    :catchall_11f
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_122
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {v2}, Landroid/media/session/MediaSession$Callback;->-wrap0(Landroid/media/session/MediaSession$Callback;)V

    goto/16 :goto_5

    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
        :pswitch_20
        :pswitch_26
        :pswitch_34
        :pswitch_42
        :pswitch_50
        :pswitch_56
        :pswitch_64
        :pswitch_72
        :pswitch_80
        :pswitch_8f
        :pswitch_96
        :pswitch_9d
        :pswitch_a4
        :pswitch_ab
        :pswitch_b2
        :pswitch_b9
        :pswitch_c8
        :pswitch_d3
        :pswitch_e2
        :pswitch_102
        :pswitch_122
    .end packed-switch
.end method

.method public post(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
