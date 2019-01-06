.class Landroid/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .registers 5

    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$5;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .registers 12

    const/16 v10, 0x385

    iget-object v8, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    if-nez v8, :cond_f

    :cond_e
    return v10

    :cond_f
    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$5;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v8, v9}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v5

    if-nez v5, :cond_1e

    return v10

    :cond_1e
    new-instance v4, Ljava/util/Scanner;

    iget-object v8, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v4, v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v8, "\\A"

    invoke-virtual {v4, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get19(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v9

    monitor-enter v9

    :try_start_3a
    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get19(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v8

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_7e

    monitor-exit v9

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v9

    monitor-enter v9

    :try_start_50
    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_81

    monitor-exit v9

    iget-object v8, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    invoke-static {v8}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v0, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v0, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v8, 0x323

    return v8

    :catchall_7e
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_81
    move-exception v8

    monitor-exit v9

    throw v8
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer$5;->addTrack()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_23
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
