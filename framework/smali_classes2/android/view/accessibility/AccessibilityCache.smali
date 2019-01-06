.class public final Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private final mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private mInputFocus:J

.field private mIsAllWindowsCached:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .registers 6

    const-wide/32 v2, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .registers 7

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    if-nez v3, :cond_b

    return-void

    :cond_b
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_11
    if-ltz v0, :cond_22

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_22
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .registers 6

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    :cond_d
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v0, :cond_1d

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1d
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method

.method private clearWindowCache()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    return-void
.end method

.method private refreshCachedNodeLocked(IJ)V
    .registers 8

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    if-nez v5, :cond_23

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v7, :cond_6c

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v6, :cond_5b

    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_47

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_89

    monitor-exit v16

    return-void

    :cond_47
    :try_start_47
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    if-eqz v4, :cond_53

    invoke-virtual {v4, v8, v9}, Landroid/util/LongArray;->indexOf(J)I

    move-result v15

    if-gez v15, :cond_58

    :cond_53
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_5b
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v18

    cmp-long v15, v18, v10

    if-eqz v15, :cond_6c

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v11}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_6c
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v5, v12, v13, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v15

    if-eqz v15, :cond_7d

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    :cond_7d
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v15

    if-eqz v15, :cond_87

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J
    :try_end_87
    .catchall {:try_start_47 .. :try_end_87} :catchall_89

    :cond_87
    monitor-exit v16

    return-void

    :catchall_89
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 7

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    :cond_14
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v3

    return-void

    :catchall_1f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public checkIntegrity()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_240

    move-result v22

    if-nez v22, :cond_21

    monitor-exit v23

    return-void

    :cond_21
    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v20

    const/4 v8, 0x0

    :goto_2e
    move/from16 v0, v20

    if-ge v8, v0, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v22

    if-eqz v22, :cond_6a

    if-eqz v3, :cond_97

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate active window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_94

    if-eqz v7, :cond_9a

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate focused window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_97
    move-object/from16 v3, v19

    goto :goto_6a

    :cond_9a
    move-object/from16 v7, v19

    goto :goto_94

    :cond_9d
    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v16

    const/4 v8, 0x0

    :goto_aa
    move/from16 v0, v16

    if-ge v8, v0, :cond_23e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_c5

    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    :cond_c5
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    const/4 v10, 0x0

    :goto_db
    if-ge v10, v13, :cond_c2

    invoke-virtual {v15, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11d

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate node: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    add-int/lit8 v10, v10, 0x1

    goto :goto_db

    :cond_11d
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v22

    if-eqz v22, :cond_154

    if-eqz v2, :cond_234

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate accessibility focus:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_154
    :goto_154
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_18b

    if-eqz v9, :cond_237

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Duplicate input focus: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18b
    :goto_18b
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v14, :cond_1df

    const/4 v6, 0x0

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    const/4 v11, 0x0

    :goto_19f
    if-ge v11, v5, :cond_1b0

    invoke-virtual {v14, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v4, v12, :cond_23a

    const/4 v6, 0x1

    :cond_1b0
    if-nez v6, :cond_1df

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invalid parent-child relation between parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " and child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1df
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    const/4 v11, 0x0

    :goto_1e4
    if-ge v11, v5, :cond_11a

    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_231

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v17

    if-eq v0, v12, :cond_231

    const-string/jumbo v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invalid child-parent relation between child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " and parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_231
    .catchall {:try_start_23 .. :try_end_231} :catchall_240

    :cond_231
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e4

    :cond_234
    move-object v2, v12

    goto/16 :goto_154

    :cond_237
    move-object v9, v12

    goto/16 :goto_18b

    :cond_23a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_19f

    :cond_23e
    monitor-exit v23

    return-void

    :catchall_240
    move-exception v22

    monitor-exit v23

    throw v22
.end method

.method public clear()V
    .registers 9

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1b

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v4

    return-void

    :catchall_27
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1e

    if-nez v1, :cond_10

    monitor-exit v3

    return-object v4

    :cond_10
    :try_start_10
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1e

    move-result-object v0

    :cond_1c
    monitor-exit v3

    return-object v0

    :catchall_1e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_14
    monitor-exit v2

    return-object v3

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_50

    if-nez v6, :cond_a

    monitor-exit v7

    return-object v8

    :cond_a
    :try_start_a
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4e

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v4, :cond_2c

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2c
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v0, v1, -0x1

    :goto_37
    if-ltz v0, :cond_4c

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_50

    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_4c
    monitor-exit v7

    return-object v5

    :cond_4e
    monitor-exit v7

    return-object v8

    :catchall_50
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12

    const-wide/32 v8, 0x7fffffff

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_35

    move-result v0

    sparse-switch v0, :sswitch_data_ae

    :cond_d
    :goto_d
    monitor-exit v5

    sget-boolean v4, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    :cond_15
    return-void

    :sswitch_16
    :try_start_16
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    :cond_25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_35

    goto :goto_d

    :catchall_35
    move-exception v4

    monitor-exit v5

    throw v4

    :sswitch_38
    :try_start_38
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    const-wide/32 v6, 0x7fffffff

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    goto :goto_d

    :sswitch_51
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_60

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    :cond_60
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_d

    :sswitch_70
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_d

    :sswitch_7c
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7f
    .catchall {:try_start_38 .. :try_end_7f} :catchall_35

    :try_start_7f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_95

    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_99

    :goto_92
    :try_start_92
    monitor-exit v6
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_35

    goto/16 :goto_d

    :cond_95
    :try_start_95
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_92

    :catchall_99
    move-exception v4

    :try_start_9a
    monitor-exit v6

    throw v4

    :sswitch_9c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto/16 :goto_d

    :sswitch_a9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V
    :try_end_ac
    .catchall {:try_start_9a .. :try_end_ac} :catchall_35

    goto/16 :goto_d

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_70
        0x4 -> :sswitch_70
        0x8 -> :sswitch_51
        0x10 -> :sswitch_70
        0x20 -> :sswitch_a9
        0x800 -> :sswitch_7c
        0x1000 -> :sswitch_9c
        0x2000 -> :sswitch_70
        0x8000 -> :sswitch_16
        0x10000 -> :sswitch_38
        0x400000 -> :sswitch_a9
    .end sparse-switch
.end method

.method public setWindows(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    if-nez p1, :cond_a

    monitor-exit v4

    return-void

    :cond_a
    :try_start_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_1d

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    monitor-exit v4

    return-void

    :catchall_22
    move-exception v3

    monitor-exit v4

    throw v3
.end method
