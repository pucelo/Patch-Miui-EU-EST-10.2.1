.class public abstract Lcom/miui/internal/search/IndexTree;
.super Ljava/lang/Object;
.source "IndexTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexTree"


# instance fields
.field private volatile mChanged:Z

.field final mLock:Ljava/lang/Object;

.field private mParent:Lcom/miui/internal/search/IndexTree;

.field private mSon:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/miui/internal/search/IndexTree;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-void
.end method


# virtual methods
.method protected final addSon(ILcom/miui/internal/search/IndexTree;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    :cond_11
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected final addSon(Lcom/miui/internal/search/IndexTree;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/search/IndexTree;->addSon(ILcom/miui/internal/search/IndexTree;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public abstract commit(Ljava/lang/StringBuilder;)V
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public final dispatchCommit(Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->commit(Ljava/lang/StringBuilder;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-eqz v2, :cond_27

    iget-object v3, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v0, p1}, Lcom/miui/internal/search/IndexTree;->dispatchCommit(Ljava/lang/StringBuilder;)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_26
    monitor-exit v3

    :cond_27
    return-void
.end method

.method public final dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 11

    const/4 v0, 0x0

    if-nez p3, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/IndexTree;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object v5, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->removeSelf()V

    :cond_10
    if-eqz p3, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v4

    if-nez v4, :cond_1a

    return v0

    :cond_1a
    iget-object v6, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1d
    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_3b

    move-result v5

    add-int/2addr v0, v5

    goto :goto_27

    :cond_39
    monitor-exit v6

    return v0

    :catchall_3b
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 10

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-boolean v5, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iput-boolean v5, v0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->getUri()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_11
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v4

    if-nez v4, :cond_18

    return-object v7

    :cond_18
    iget-object v6, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v2, p1}, Lcom/miui/internal/search/IndexTree;->dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_35

    move-result-object v1

    if-eqz v1, :cond_1f

    monitor-exit v6

    return-object v1

    :cond_33
    monitor-exit v6

    return-object v7

    :catchall_35
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/search/IndexTree;->query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v7

    if-nez v7, :cond_e

    return-void

    :cond_e
    iget-object v8, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_11
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/IndexTree;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/search/IndexTree;->dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_15

    :catchall_2a
    move-exception v1

    monitor-exit v8

    throw v1

    :cond_2d
    monitor-exit v8

    return-void
.end method

.method public final dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    :cond_b
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v3

    if-nez v3, :cond_12

    return v0

    :cond_12
    iget-object v5, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2d

    move-result v4

    add-int/2addr v0, v4

    goto :goto_19

    :cond_2b
    monitor-exit v5

    return v0

    :catchall_2d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getParent()Lcom/miui/internal/search/IndexTree;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-object v0
.end method

.method public getSons()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected abstract getUri()Ljava/lang/String;
.end method

.method public abstract insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
.end method

.method public final needCommit()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    if-eqz v2, :cond_7

    return v4

    :cond_7
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v2, :cond_c

    return v3

    :cond_c
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->needCommit()Z

    move-result v2

    if-eqz v2, :cond_12

    return v4

    :cond_25
    return v3
.end method

.method public abstract query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public removeSelf()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    iget-object v1, v0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    iget-object v0, v0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_17

    monitor-exit v1

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected replaceBy(Lcom/miui/internal/search/IndexTree;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
.end method
