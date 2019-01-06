.class Landroid/widget/ExpandableListPosition;
.super Ljava/lang/Object;
.source "ExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ExpandableListPosition;
    .registers 4

    sget-object v2, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListPosition;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_20

    monitor-exit v2

    invoke-direct {v0}, Landroid/widget/ExpandableListPosition;->resetState()V

    return-object v0

    :cond_19
    :try_start_19
    new-instance v1, Landroid/widget/ExpandableListPosition;

    invoke-direct {v1}, Landroid/widget/ExpandableListPosition;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_20

    monitor-exit v2

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static obtain(IIII)Landroid/widget/ExpandableListPosition;
    .registers 5

    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    move-result-object v0

    iput p0, v0, Landroid/widget/ExpandableListPosition;->type:I

    iput p1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iput p2, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    iput p3, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    return-object v0
.end method

.method static obtainChildPosition(II)Landroid/widget/ExpandableListPosition;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Landroid/widget/ExpandableListPosition;
    .registers 8

    const/4 v4, 0x1

    const-wide v2, 0xffffffffL

    cmp-long v1, p0, v2

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v4, :cond_25

    iput v4, v0, Landroid/widget/ExpandableListPosition;->type:I

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    :goto_24
    return-object v0

    :cond_25
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    goto :goto_24
.end method

.method private resetState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iput v0, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    iput v0, p0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iput v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .registers 3

    iget v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v1, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    :cond_e
    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public recycle()V
    .registers 4

    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_11

    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method
