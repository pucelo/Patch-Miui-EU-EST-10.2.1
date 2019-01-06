.class Landroid/media/AudioRecord$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private final mAudioRecord:Landroid/media/AudioRecord;

.field final synthetic this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    invoke-static {v1}, Landroid/media/AudioRecord;->-get2(Landroid/media/AudioRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {v1}, Landroid/media/AudioRecord;->-get1(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2e

    move-result-object v0

    monitor-exit v2

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown native event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioRecord;->-wrap0(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_31
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onMarkerReached(Landroid/media/AudioRecord;)V

    goto :goto_2d

    :pswitch_39
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioRecord;)V

    goto :goto_2d

    nop

    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_31
        :pswitch_39
    .end packed-switch
.end method
