.class abstract Landroid/location/LocalListenerHelper;
.super Ljava/lang/Object;
.source "LocalListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocalListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT",
            "Listener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/location/LocalListenerHelper;->executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    return-void
.end method

.method private executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocalListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;TT",
            "Listener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Landroid/location/LocalListenerHelper$ListenerOperation;->execute(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    iget-object v1, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Error in monitored listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public add(Ljava/lang/Object;Landroid/os/Handler;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_8
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_3c

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_10
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->registerWithServer()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_20
    .catchall {:try_start_10 .. :try_end_13} :catchall_3c

    move-result v1

    if-nez v1, :cond_2b

    :try_start_16
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "Unable to register listener transport."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_3c

    monitor-exit v3

    return v5

    :catch_20
    move-exception v0

    :try_start_21
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "Error handling first listener."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_3c

    monitor-exit v3

    return v5

    :cond_2b
    :try_start_2b
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3c

    move-result v2

    if-eqz v2, :cond_35

    monitor-exit v3

    return v4

    :cond_35
    :try_start_35
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3c

    monitor-exit v3

    return v4

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocalListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    monitor-exit v4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_30

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/location/LocalListenerHelper;->executeOperation(Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    goto :goto_13

    :catchall_2d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/location/LocalListenerHelper$1;

    invoke-direct {v4, p0, p1, v0}, Landroid/location/LocalListenerHelper$1;-><init>(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/util/Map$Entry;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_3f
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/location/LocalListenerHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract registerWithServer()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_6
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_20

    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2c

    move-result v1

    :goto_19
    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->unregisterFromServer()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_22
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2c

    :cond_1e
    :goto_1e
    monitor-exit v4

    return-void

    :cond_20
    const/4 v1, 0x0

    goto :goto_19

    :catch_22
    move-exception v0

    :try_start_23
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "Error handling last listener removal"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2c

    goto :goto_1e

    :catchall_2c
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected abstract unregisterFromServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
