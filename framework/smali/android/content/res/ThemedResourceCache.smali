.class abstract Landroid/content/res/ThemedResourceCache;
.super Ljava/lang/Object;
.source "ThemedResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mNullThemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mThemedEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Resources$ThemeKey;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private mUnthemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Z)",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_14

    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v3, :cond_11

    if-eqz p2, :cond_11

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    :cond_11
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    return-object v3

    :cond_14
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v3, :cond_21

    if-eqz p2, :cond_40

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    :cond_21
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_3f

    if-eqz p2, :cond_3f

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    invoke-virtual {v1}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    return-object v0

    :cond_40
    return-object v4
.end method

.method private getUnthemedLocked(Z)Landroid/util/LongSparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    :cond_e
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private prune(I)Z
    .registers 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_e
    if-ltz v0, :cond_26

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_26
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_43

    if-nez v1, :cond_3f

    const/4 v1, 0x1

    :goto_3d
    monitor-exit p0

    return v1

    :cond_3f
    move v1, v2

    goto :goto_3d

    :cond_41
    move v1, v2

    goto :goto_3d

    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_b
    if-ltz v0, :cond_25

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/content/res/ThemedResourceCache;->pruneEntryLocked(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_1f
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_25
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2c

    :goto_2b
    return v2

    :cond_2c
    move v2, v3

    goto :goto_2b
.end method

.method private pruneEntryLocked(Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/content/res/ThemedResourceCache;->shouldInvalidateEntry(Ljava/lang/Object;I)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, p3, v4}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2e

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_17
    const/4 v4, 0x0

    :try_start_18
    invoke-direct {p0, v4}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_2c
    monitor-exit p0

    return-object v5

    :catchall_2e
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onConfigurationChange(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/res/ThemedResourceCache;->prune(I)Z

    return-void
.end method

.method public put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;)V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;Z)V"
        }
    .end annotation

    if-nez p4, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    if-nez p5, :cond_17

    const/4 v1, 0x1

    :try_start_7
    invoke-direct {p0, v1}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_15

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1d

    :cond_15
    monitor-exit p0

    return-void

    :cond_17
    const/4 v1, 0x1

    :try_start_18
    invoke-direct {p0, p3, v1}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    move-result-object v0

    goto :goto_b

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
