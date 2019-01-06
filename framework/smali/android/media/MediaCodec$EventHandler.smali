.class Landroid/media/MediaCodec$EventHandler;
.super Landroid/os/Handler;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCodec:Landroid/media/MediaCodec;

.field final synthetic this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    return-void
.end method

.method private handleCallback(Landroid/os/Message;)V
    .registers 8

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_80

    :goto_e
    return-void

    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get0(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_18
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-get1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/media/MediaCodec;->-wrap1(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_30

    monitor-exit v3

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    goto :goto_e

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_33
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get0(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_40
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-get2(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v2, v4, v0, v1}, Landroid/media/MediaCodec;->-wrap2(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_58

    monitor-exit v3

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_e

    :catchall_58
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_5b
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    goto :goto_e

    :pswitch_6b
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    new-instance v5, Landroid/media/MediaFormat;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v5, v2}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_e

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_f
        :pswitch_33
        :pswitch_5b
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    goto :goto_5

    :pswitch_a
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec$Callback;

    invoke-static {v1, v0}, Landroid/media/MediaCodec;->-set0(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-get4(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_1b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    const/4 v6, 0x0

    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-media-time-us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-system-nano"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_1b .. :try_end_4f} :catchall_78

    move-result-object v9

    if-eqz v8, :cond_54

    if-nez v9, :cond_56

    :cond_54
    monitor-exit v10

    goto :goto_5

    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-get5(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-get5(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/media/MediaCodec$OnFrameRenderedListener;->onFrameRendered(Landroid/media/MediaCodec;JJ)V
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_78

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :catchall_78
    move-exception v0

    monitor-exit v10

    throw v0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_14
    .end packed-switch
.end method
