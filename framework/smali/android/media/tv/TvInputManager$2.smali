.class Landroid/media/tv/TvInputManager$2;
.super Landroid/media/tv/ITvInputManagerCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputAdded(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2f

    goto :goto_1f

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_32
    monitor-exit v3

    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .registers 6

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputRemoved(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2a

    goto :goto_1a

    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2d
    monitor-exit v3

    return-void
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .registers 8

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputStateChanged(Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2e

    goto :goto_1e

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_31
    monitor-exit v3

    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .registers 6

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_11

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_24
    monitor-exit v3

    return-void
.end method

.method public onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .registers 6

    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_11

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_24
    monitor-exit v3

    return-void
.end method
