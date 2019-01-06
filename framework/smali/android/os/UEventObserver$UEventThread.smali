.class final Landroid/os/UEventObserver$UEventThread;
.super Ljava/lang/Thread;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UEventThread"
.end annotation


# instance fields
.field private final mKeysAndObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempObserversToSignal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "UEventObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .registers 10

    iget-object v6, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2c

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UEventObserver;

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_51

    :cond_29
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_2c
    monitor-exit v6

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    new-instance v1, Landroid/os/UEventObserver$UEvent;

    invoke-direct {v1, p1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v0, :cond_54

    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UEventObserver;

    invoke-virtual {v4, v1}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :catchall_51
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_54
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_59
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .registers 5

    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UEventObserver;->-wrap1(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeObserver(Landroid/os/UEventObserver;)V
    .registers 7

    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2c

    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/os/UEventObserver;->-wrap2(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_29

    goto :goto_4

    :catchall_29
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2c
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_2f
    monitor-exit v3

    return-void
.end method

.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/UEventObserver;->-wrap3()V

    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/UEventObserver;->-wrap0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroid/os/UEventObserver$UEventThread;->sendEvent(Ljava/lang/String;)V

    goto :goto_3
.end method
