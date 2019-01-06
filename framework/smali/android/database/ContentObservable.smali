.class public Landroid/database/ContentObservable;
.super Landroid/database/Observable;
.source "ContentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/database/ContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchChange(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public dispatchChange(ZLandroid/net/Uri;)V
    .registers 7

    iget-object v3, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1d
    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_21

    goto :goto_9

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_24
    monitor-exit v3

    return-void
.end method

.method public notifyChange(Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v3, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_9

    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1d
    monitor-exit v3

    return-void
.end method

.method public registerObserver(Landroid/database/ContentObserver;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerObserver(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
