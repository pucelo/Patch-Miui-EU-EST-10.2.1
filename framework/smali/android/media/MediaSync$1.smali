.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-wide/16 v12, -0x1

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_9
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get6(Landroid/media/MediaSync;)F
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_a2

    move-result v6

    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-nez v6, :cond_18

    monitor-exit v7

    return-void

    :cond_18
    :try_start_18
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_a2

    move-result v6

    if-eqz v6, :cond_26

    monitor-exit v7

    return-void

    :cond_26
    :try_start_26
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    iget-object v6, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_51

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_a2

    move-result v6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_51

    :try_start_48
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_51} :catch_97
    .catchall {:try_start_48 .. :try_end_51} :catchall_a2

    :cond_51
    :goto_51
    :try_start_51
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    iget-object v8, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v4, v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v5

    if-lez v5, :cond_a5

    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_71

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    invoke-static {v6, v4, v8, v9}, Landroid/media/MediaSync;->-wrap1(Landroid/media/MediaSync;IJ)V

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    :cond_71
    if-ne v5, v4, :cond_a5

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6, v0}, Landroid/media/MediaSync;->-wrap3(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_95

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_95
    .catchall {:try_start_51 .. :try_end_95} :catchall_a2

    :cond_95
    monitor-exit v7

    return-void

    :catch_97
    move-exception v1

    :try_start_98
    const-string/jumbo v6, "MediaSync"

    const-string/jumbo v8, "could not start audio track"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_a2

    goto :goto_51

    :catchall_a2
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_a5
    :try_start_a5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v8}, Landroid/media/MediaSync;->-wrap0(Landroid/media/MediaSync;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x2

    div-long v8, v2, v8

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_ba
    .catchall {:try_start_a5 .. :try_end_ba} :catchall_a2

    monitor-exit v7

    return-void
.end method
