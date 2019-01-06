.class Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .registers 8

    const/4 v4, 0x0

    if-gez p2, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Pixel distance must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    iget v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-nez v2, :cond_30

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aput p1, v2, v1

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v3, v1, 0x1

    aput p2, v2, v3

    iget v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void

    :cond_30
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_1f
.end method

.method clearPrefetchPositions()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_a
    return-void
.end method

.method collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V
    .registers 7

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_d
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    if-eqz p2, :cond_40

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_2e
    :goto_2e
    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3f

    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iput-boolean p2, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_3f
    return-void

    :cond_40
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2e

    iget v1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_2e
.end method

.method lastPrefetchIncludedPosition(I)Z
    .registers 5

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v2, :cond_16

    iget v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v2, 0x2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_16

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_13

    const/4 v2, 0x1

    return v2

    :cond_13
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method setPrefetchVector(II)V
    .registers 3

    iput p1, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iput p2, p0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    return-void
.end method
