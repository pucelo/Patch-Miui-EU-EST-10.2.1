.class Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedSizeRemoteViewsCache"

.field private static final sMaxCountSlackPercent:F = 0.75f

.field private static final sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private final mIndexMetaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndexRemoteViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicesToLoad:Landroid/util/SparseBooleanArray;

.field private mLastRequestedIndex:I

.field private final mMaxCount:I

.field private final mMaxCountSlack:I

.field private final mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private final mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iput v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    return-void
.end method

.method private getFarthestPositionFrom(I[I)I
    .registers 11

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_c
    if-ltz v1, :cond_2b

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sub-int v7, v2, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_24

    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_24

    move v5, v2

    move v6, v0

    :cond_24
    if-lt v0, v3, :cond_28

    move v4, v2

    move v3, v0

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2b
    const/4 v7, -0x1

    if-le v5, v7, :cond_2f

    return v5

    :cond_2f
    return v4
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .registers 5

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-ltz v0, :cond_1d

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    add-int/2addr v1, v3

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1d
    return v1
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .registers 5

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    :try_start_6
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_10

    :try_start_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_13

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v2

    throw v0
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsMetaDataAt(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    return-object v0
.end method

.method public getNextIndexToLoad()I
    .registers 6

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_25

    move-result v0

    :cond_13
    if-gez v0, :cond_18

    const/4 v2, -0x1

    monitor-exit v3

    return v2

    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_25

    monitor-exit v3

    return v1

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public insert(ILandroid/widget/RemoteViews;J[I)V
    .registers 11

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    if-lt v3, v4, :cond_13

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    :cond_13
    iget v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3b

    iget v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    :goto_1a
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    move-result v3

    const/high16 v4, 0x200000

    if-lt v3, v4, :cond_28

    invoke-direct {p0, v1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    move-result v2

    if-gez v2, :cond_3d

    :cond_28
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    if-eqz v0, :cond_43

    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    :goto_35
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_3b
    move v1, p1

    goto :goto_1a

    :cond_3d
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1a

    :cond_43
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    invoke-direct {v4, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_35
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .registers 11

    const/4 v8, 0x0

    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    if-gt v6, p1, :cond_1b

    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    if-gt p1, v6, :cond_1b

    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    add-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x2

    sub-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    if-ge v6, v7, :cond_1b

    return v8

    :cond_1b
    const/4 v1, 0x0

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v7

    :try_start_1f
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget v1, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_41

    monitor-exit v7

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v7

    :try_start_27
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_2f
    if-ltz v5, :cond_44

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_3e

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_80

    :cond_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_2f

    :catchall_41
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_44
    :try_start_44
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v4, v6, 0x2

    sub-int v6, p1, v4

    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    add-int v6, p1, v4

    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    add-int/lit8 v8, v1, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v2

    :goto_60
    if-gt v5, v3, :cond_7d

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_7a

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7a

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_7a
    .catchall {:try_start_44 .. :try_end_7a} :catchall_80

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_7d
    monitor-exit v7

    const/4 v6, 0x1

    return v6

    :catchall_80
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .registers 5

    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iput v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
