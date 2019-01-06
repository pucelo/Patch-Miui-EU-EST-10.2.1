.class Landroid/filterpacks/videosrc/MediaSource$4;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .registers 2

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "New frame from media player"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v2, "New frame: notify"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->-set3(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v0}, Landroid/filterpacks/videosrc/MediaSource;->notify()V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$4;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v2, "New frame: notify done"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit v1

    return-void

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method
