.class Landroid/os/FileObserver$ObserverThread;
.super Ljava/lang/Thread;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverThread"
.end annotation


# instance fields
.field private m_fd:I

.field private m_observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "FileObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-direct {p0}, Landroid/os/FileObserver$ObserverThread;->init()I

    move-result v0

    iput v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    return-void
.end method

.method private native init()I
.end method

.method private native observe(I)V
.end method

.method private native startWatching(ILjava/lang/String;I)I
.end method

.method private native stopWatching(II)V
.end method


# virtual methods
.method public onEvent(IILjava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/FileObserver;

    move-object v1, v0

    if-nez v1, :cond_25

    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2c

    :cond_25
    monitor-exit v5

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1, p2, p3}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2f

    :cond_2b
    :goto_2b
    return-void

    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_2f
    move-exception v2

    const-string/jumbo v4, "FileObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled exception in FileObserver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public run()V
    .registers 2

    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0}, Landroid/os/FileObserver$ObserverThread;->observe(I)V

    return-void
.end method

.method public startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I
    .registers 9

    iget v2, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v2, p1, p2}, Landroid/os/FileObserver$ObserverThread;->startWatching(ILjava/lang/String;I)I

    move-result v1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    if-ltz v1, :cond_1b

    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_10
    iget-object v2, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    monitor-exit v3

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :catchall_20
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public stopWatching(I)V
    .registers 3

    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(II)V

    return-void
.end method
