.class Landroid/media/tv/TvInputManager$1;
.super Landroid/media/tv/ITvInputClient$Stub;
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

    iput-object p1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputClient$Stub;-><init>()V

    return-void
.end method

.method private postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    .registers 5

    invoke-static {p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoSizeChanged(II)V

    :cond_15
    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/net/Uri;I)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postChannelRetuned(Landroid/net/Uri;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onContentAllowed(I)V
    .registers 7

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentAllowed()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onContentBlocked(Ljava/lang/String;I)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_3a

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentBlocked(Landroid/media/tv/TvContentRating;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    monitor-exit v2

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onError(II)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postError(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onLayoutSurface(IIIII)V
    .registers 11

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onRecordingStopped(Landroid/net/Uri;I)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postRecordingStopped(Landroid/net/Uri;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 15

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v8, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Callback not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_54

    monitor-exit v9

    return-void

    :cond_31
    const/4 v0, 0x0

    if-eqz p2, :cond_4f

    :try_start_34
    new-instance v0, Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get2(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;

    move-result-object v3

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get5(Landroid/media/tv/TvInputManager;)I

    move-result v4

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager$Session;)V

    :cond_4f
    invoke-virtual {v8, v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_54

    monitor-exit v9

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSessionReleased(I)V
    .registers 7

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez v0, :cond_3a

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_46

    monitor-exit v2

    return-void

    :cond_3a
    :try_start_3a
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/TvInputManager$Session;->-wrap1(Landroid/media/tv/TvInputManager$Session;)V

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionReleased()V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_46

    monitor-exit v2

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTimeShiftCurrentPositionChanged(JI)V
    .registers 9

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftCurrentPositionChanged(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTimeShiftStartPositionChanged(JI)V
    .registers 9

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStartPositionChanged(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTimeShiftStatusChanged(II)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStatusChanged(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTrackSelected(ILjava/lang/String;I)V
    .registers 9

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_43

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$Session;->updateTrackSelection(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTrackSelected(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit v2

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTracksChanged(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_43

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$Session;->updateTracks(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTracksChanged(Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit v2

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTuned(ILandroid/net/Uri;)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTuned(Landroid/net/Uri;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onVideoAvailable(I)V
    .registers 7

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoAvailable()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onVideoUnavailable(II)V
    .registers 8

    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    if-nez v0, :cond_31

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    monitor-exit v2

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoUnavailable(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method
