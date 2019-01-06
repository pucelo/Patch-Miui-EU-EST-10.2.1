.class Landroid/media/audiofx/Visualizer$NativeEventHandler;
.super Landroid/os/Handler;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Visualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field final synthetic this$0:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    return-void
.end method

.method private handleCaptureMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v3}, Landroid/media/audiofx/Visualizer;->-get1(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_8
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v3}, Landroid/media/audiofx/Visualizer;->-get0(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_39

    move-result-object v1

    monitor-exit v4

    if-eqz v1, :cond_38

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_48

    const-string/jumbo v3, "Visualizer-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown native event in handleCaptureMessge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void

    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_3c
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_38

    :pswitch_42
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_38

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method

.method private handleServerDiedMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->-get1(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->-get2(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_15

    move-result-object v0

    monitor-exit v2

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/media/audiofx/Visualizer$OnServerDiedListener;->onServerDied()V

    :cond_14
    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    const-string/jumbo v0, "Visualizer-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown native event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void

    :pswitch_27
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->handleCaptureMessage(Landroid/os/Message;)V

    goto :goto_26

    :pswitch_2b
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->handleServerDiedMessage(Landroid/os/Message;)V

    goto :goto_26

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method
