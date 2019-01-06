.class public abstract Lmiui/maml/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    }
.end annotation


# instance fields
.field private mActiveCount:I

.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/NotifierManager$BaseNotifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final checkListeners()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final checkListenersLocked()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_b
    if-ltz v0, :cond_32

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    iget-object v2, v1, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_25
    invoke-static {v1}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->-get0(Lmiui/maml/NotifierManager$BaseNotifier$Listener;)Z

    move-result v2

    if-nez v2, :cond_22

    iget v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    goto :goto_22

    :cond_32
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return-void
.end method

.method private final findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;
    .registers 5

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    iget-object v2, v0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_6

    return-object v0

    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public final addListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 5

    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    invoke-direct {v2, p1}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;-><init>(Lmiui/maml/NotifierManager$OnNotifyListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finish()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final getActiveCount()I
    .registers 2

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    iget v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    return v0
.end method

.method public final getRef()I
    .registers 2

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    iget v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return v0
.end method

.method public init()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 8

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    iget-object v3, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    goto :goto_c

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1f
    monitor-exit v3

    return-void
.end method

.method protected abstract onRegister()V
.end method

.method protected abstract onUnregister()V
.end method

.method public pause()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final pauseListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I
    .registers 6

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    if-nez v0, :cond_16

    const-string/jumbo v1, "NotifierManager"

    const-string/jumbo v3, "pauseListener, listener not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_20

    monitor-exit v2

    return v1

    :cond_16
    :try_start_16
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pause()V

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_20

    monitor-exit v2

    return v1

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected register()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->onRegister()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    invoke-static {}, Lmiui/maml/NotifierManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public final removeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 5

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v2

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resume()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method public final resumeListener(Lmiui/maml/NotifierManager$OnNotifyListener;)I
    .registers 6

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lmiui/maml/NotifierManager$OnNotifyListener;)Lmiui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v0

    if-nez v0, :cond_16

    const-string/jumbo v1, "NotifierManager"

    const-string/jumbo v3, "resumeListener, listener not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_20

    monitor-exit v2

    return v1

    :cond_16
    :try_start_16
    invoke-virtual {v0}, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->resume()V

    invoke-direct {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()V

    iget v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mActiveCount:I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_20

    monitor-exit v2

    return v1

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected unregister()V
    .registers 5

    iget-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_30

    :goto_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    invoke-static {}, Lmiui/maml/NotifierManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "NotifierManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BaseNotifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void

    :catch_30
    move-exception v0

    const-string/jumbo v1, "NotifierManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
