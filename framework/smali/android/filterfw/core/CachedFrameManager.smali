.class public Landroid/filterfw/core/CachedFrameManager;
.super Landroid/filterfw/core/SimpleFrameManager;
.source "CachedFrameManager.java"


# instance fields
.field private mAvailableFrames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageCapacity:I

.field private mStorageSize:I

.field private mTimeStamp:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/filterfw/core/SimpleFrameManager;-><init>()V

    const/high16 v0, 0x1800000

    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    return-void
.end method

.method private dropOldestFrame()V
    .registers 5

    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .registers 14

    iget-object v4, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/Frame;

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/filterfw/core/FrameFormat;->isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getBindingType()I

    move-result v3

    if-ne p2, v3, :cond_d

    if-eqz p2, :cond_39

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v6

    cmp-long v3, p3, v6

    if-nez v3, :cond_d

    :cond_39
    invoke-super {p0, v2}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->onFrameFetch()V

    invoke-virtual {v2, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_59

    monitor-exit v4

    return-object v2

    :cond_56
    monitor-exit v4

    const/4 v3, 0x0

    return-object v3

    :catchall_59
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private storeFrame(Landroid/filterfw/core/Frame;)Z
    .registers 7

    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3b

    if-le v0, v2, :cond_12

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_12
    :try_start_12
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    add-int v1, v2, v0

    :goto_16
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    if-le v1, v2, :cond_22

    invoke-direct {p0}, Landroid/filterfw/core/CachedFrameManager;->dropOldestFrame()V

    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    add-int v1, v2, v0

    goto :goto_16

    :cond_22
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->onFrameStore()V

    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    iget v4, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_3b

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public clearCache()V
    .registers 4

    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    goto :goto_a

    :cond_1a
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    return-void
.end method

.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .registers 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/filterfw/core/SimpleFrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    :cond_a
    const-wide/16 v2, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    return-object v0
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    :cond_d
    const-wide/16 v2, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 5

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->isReusable()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, p1}, Landroid/filterfw/core/CachedFrameManager;->storeFrame(Landroid/filterfw/core/Frame;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    :cond_1b
    const/4 v1, 0x0

    return-object v1

    :cond_1d
    if-gez v0, :cond_2b

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Frame reference count dropped below 0!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    :cond_2b
    return-object p1
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 3

    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public tearDown()V
    .registers 1

    invoke-virtual {p0}, Landroid/filterfw/core/CachedFrameManager;->clearCache()V

    return-void
.end method
