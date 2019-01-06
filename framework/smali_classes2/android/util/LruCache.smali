.class public Landroid/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2b

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public final evictAll()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->trimToSize(I)V

    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    monitor-enter p0

    :try_start_d
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_2b

    monitor-exit p0

    return-object v1

    :cond_1d
    :try_start_1d
    iget v2, p0, Landroid/util/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->missCount:I
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_2b

    monitor-exit p0

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e

    return-object v3

    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2e
    monitor-enter p0

    :try_start_2f
    iget v2, p0, Landroid/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->createCount:I

    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_54

    :goto_42
    monitor-exit p0

    if-eqz v1, :cond_57

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_4a
    :try_start_4a
    iget v2, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->size:I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_54

    goto :goto_42

    :catchall_54
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_57
    iget v2, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Landroid/util/LruCache;->trimToSize(I)V

    return-object v0
.end method

.method public final declared-synchronized hitCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    monitor-enter p0

    :try_start_e
    iget v1, p0, Landroid/util/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->putCount:I

    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_3b

    :cond_2e
    monitor-exit p0

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    iget v1, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    return-object v0

    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    monitor-enter p0

    :try_start_d
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_26

    :cond_1e
    monitor-exit p0

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v3}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    return-object v0

    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resize(I)V
    .registers 4

    if-gtz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    monitor-enter p0

    :try_start_c
    iput p1, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_13

    monitor-exit p0

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    iget v3, p0, Landroid/util/LruCache;->missCount:I

    add-int v0, v2, v3

    if-eqz v0, :cond_3d

    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    :goto_f
    const-string/jumbo v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Landroid/util/LruCache;->maxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/util/LruCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Landroid/util/LruCache;->missCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3f

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_3d
    const/4 v1, 0x0

    goto :goto_f

    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .registers 8

    const/4 v5, 0x0

    :goto_1
    monitor-enter p0

    :try_start_2
    iget v3, p0, Landroid/util/LruCache;->size:I

    if-ltz v3, :cond_12

    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    iget v3, p0, Landroid/util/LruCache;->size:I

    if-eqz v3, :cond_37

    :cond_12
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/LruCache;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_37
    :try_start_37
    iget v3, p0, Landroid/util/LruCache;->size:I
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_34

    if-gt v3, p1, :cond_3d

    :cond_3b
    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/util/LruCache;->size:I

    iget v3, p0, Landroid/util/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_34

    monitor-exit p0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v2, v5}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
