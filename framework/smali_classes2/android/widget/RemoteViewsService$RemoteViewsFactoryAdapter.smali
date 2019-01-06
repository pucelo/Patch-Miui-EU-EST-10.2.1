.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private mIsCreated:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v0

    :goto_8
    monitor-exit p0

    return v0

    :catch_a
    move-exception v1

    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getItemId(I)J
    .registers 7

    monitor-enter p0

    const-wide/16 v2, 0x0

    :try_start_3
    iget-object v4, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v4, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    move-result-wide v2

    :goto_9
    monitor-exit p0

    return-wide v2

    :catch_b
    move-exception v0

    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_9

    :catchall_18
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result-object v1

    :goto_8
    monitor-exit p0

    return-object v1

    :catch_a
    move-exception v0

    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .registers 6

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10
    .catchall {:try_start_2 .. :try_end_e} :catchall_1d

    :cond_e
    :goto_e
    monitor-exit p0

    return-object v1

    :catch_10
    move-exception v0

    :try_start_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1d

    goto :goto_e

    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewTypeCount()I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v0

    :goto_8
    monitor-exit p0

    return v0

    :catch_a
    move-exception v1

    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized hasStableIds()Z
    .registers 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_a
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    move-result v1

    :goto_8
    monitor-exit p0

    return v1

    :catch_a
    move-exception v0

    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_8

    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isCreated()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDataSetChanged()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    :goto_6
    monitor-exit p0

    return-void

    :catch_8
    move-exception v0

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_6

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDataSetChangedAsync()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy(Landroid/content/Intent;)V
    .registers 8

    invoke-static {}, Landroid/widget/RemoteViewsService;->-get0()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_5
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {}, Landroid/widget/RemoteViewsService;->-get1()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {}, Landroid/widget/RemoteViewsService;->-get1()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_37

    :try_start_1e
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2a
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    :goto_21
    :try_start_21
    invoke-static {}, Landroid/widget/RemoteViewsService;->-get1()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_37

    :cond_28
    monitor-exit v5

    return-void

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_37

    goto :goto_21

    :catchall_37
    move-exception v4

    monitor-exit v5

    throw v4
.end method
