.class public final Lcom/android/internal/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_23
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_1b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_18

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1b
    if-nez p2, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_2b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2a
.end method

.method private invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_e
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z
    .registers 16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    return v0

    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    sub-long v8, v6, v2

    invoke-virtual {v0, v4, v8, v9}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_4d

    iput p3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_4d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_e
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .registers 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    if-ltz v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v2, v0, :cond_64

    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_93

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_83
    iput-boolean v8, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    iput-object v1, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_ad

    move v0, v8

    :goto_90
    iput-boolean v0, v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void

    :cond_93
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_83

    :cond_a9
    move-object v7, v6

    check-cast v7, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    goto :goto_83

    :cond_ad
    move v0, v9

    goto :goto_90
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .registers 7

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_17

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_17
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v4, :cond_2e

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2e
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v1, :cond_49

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_49
    return-void
.end method

.method clearScrap()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_e
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .registers 5

    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_40

    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_4b

    return p1

    :cond_4b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0
.end method

.method dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_27
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 12

    const/16 v9, 0x20

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    return-object v8

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_2e

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_2b

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v1

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2e
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_74

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    if-lez v3, :cond_74

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    if-ge v3, v6, :cond_74

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v0, :cond_74

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_71

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_71

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v1

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_74
    return-object v8
.end method

.method getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 14

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_a
    if-ltz v3, :cond_5c

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_59

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_59

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_46

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_45

    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    :cond_45
    return-object v2

    :cond_46
    if-nez p4, :cond_59

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_59
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_5c
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_64
    if-ltz v3, :cond_8d

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_8a

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_84

    if-nez p4, :cond_83

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_83
    return-object v2

    :cond_84
    if-nez p4, :cond_8a

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    return-object v7

    :cond_8a
    add-int/lit8 v3, v3, -0x1

    goto :goto_64

    :cond_8d
    return-object v7
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 13

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_3f

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_3c

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3c

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v7, v7, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v7, :cond_36

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3c

    :cond_36
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3f
    if-nez p2, :cond_8b

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8b

    invoke-static {v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ChildHelper;->unhide(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_7b

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7b
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v5

    :cond_8b
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_92
    if-ge v2, v0, :cond_b3

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_b0

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_b0

    if-nez p2, :cond_af

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_af
    return-object v1

    :cond_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_b3
    return-object v8
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .registers 6

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_21

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_1e

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_31

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2b

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_31
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 7

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_1b

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 11

    const/4 v7, 0x0

    if-ge p1, p2, :cond_20

    move v5, p1

    move v1, p2

    const/4 v4, -0x1

    :goto_6
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_36

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1d

    iget v6, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v6, v5, :cond_24

    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_20
    move v5, p2

    move v1, p1

    const/4 v4, 0x1

    goto :goto_6

    :cond_24
    iget v6, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-gt v6, v1, :cond_1d

    iget v6, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_32

    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1d

    :cond_32
    invoke-virtual {v2, v4, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1d

    :cond_36
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 9

    add-int v3, p1, p2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_a
    if-ltz v2, :cond_2e

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_1e

    iget v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_21

    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_21
    iget v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1e

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-set1(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)Lcom/android/internal/widget/RecyclerView$Recycler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-set0(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)Z

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .registers 4

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_22
    return-void
.end method

.method recycleCachedViewAt(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void

    :cond_1d
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_19
.end method

.method recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_43

    :cond_11
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " isAttached:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_37

    move v8, v9

    :cond_37
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_43
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v10

    if-eqz v10, :cond_63

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_72

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_72
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-wrap0(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v10, v10, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_fe

    if-eqz v7, :cond_fe

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v10, v10, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    :goto_86
    const/4 v1, 0x0

    const/4 v5, 0x0

    if-nez v4, :cond_90

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v10

    if-eqz v10, :cond_ec

    :cond_90
    iget v10, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v10, :cond_e6

    const/16 v10, 0x20e

    invoke-virtual {p1, v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_e6

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v10, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v10, :cond_af

    if-lez v3, :cond_af

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_af
    move v6, v3

    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-get0()Z

    move-result v8

    if-eqz v8, :cond_e0

    if-lez v3, :cond_e0

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_e0

    add-int/lit8 v0, v3, -0x1

    :goto_c8
    if-ltz v0, :cond_de

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v2, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v8, v2}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_100

    :cond_de
    add-int/lit8 v6, v0, 0x1

    :cond_e0
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    :cond_e6
    if-nez v1, :cond_ec

    invoke-virtual {p0, p1, v9}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    const/4 v5, 0x1

    :cond_ec
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v8, v8, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    if-nez v1, :cond_fd

    xor-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_fd

    if-eqz v7, :cond_fd

    iput-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    :cond_fd
    return-void

    :cond_fe
    const/4 v4, 0x0

    goto :goto_86

    :cond_100
    add-int/lit8 v0, v0, -0x1

    goto :goto_c8
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_49

    :cond_1c
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_48
    return-void

    :cond_49
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_54

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_54
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48
.end method

.method setAdapterPositionsAsUnknown()V
    .registers 5

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_18

    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method

.method setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    :cond_18
    return-void
.end method

.method setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    return-void
.end method

.method public setViewCacheSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 28

    if-ltz p1, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_4e

    :cond_10
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "). Item count:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    const/16 v16, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_f3

    const/16 v16, 0x1

    :cond_65
    :goto_65
    if-nez v7, :cond_94

    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_94

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_101

    if-nez p2, :cond_93

    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_f7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    :cond_8e
    :goto_8e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_93
    const/4 v7, 0x0

    :cond_94
    :goto_94
    if-nez v7, :cond_1dd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    if-ltz v8, :cond_b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v8, v2, :cond_104

    :cond_b0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inconsistency detected. Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "(offset:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ")."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "state:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f3
    const/16 v16, 0x0

    goto/16 :goto_65

    :cond_f7
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_8e

    :cond_101
    const/16 v16, 0x1

    goto :goto_94

    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_132

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v11, v3, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_132

    iput v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/16 v16, 0x1

    :cond_132
    if-nez v7, :cond_16c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    if-eqz v2, :cond_16c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/android/internal/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_16c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-nez v7, :cond_15d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15d
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_16c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16c
    if-nez v7, :cond_184

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_184

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    sget-boolean v2, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_184

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_184
    if-nez v7, :cond_1dd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v2, p3, v10

    if-eqz v2, :cond_1a7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1a7

    const/4 v2, 0x0

    return-object v2

    :cond_1a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1cc

    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v18

    if-eqz v18, :cond_1cc

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_1cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    sub-long v10, v14, v4

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    :cond_1dd
    if-eqz v16, :cond_228

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_228

    const/16 v2, 0x2000

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-eqz v2, :cond_228

    const/4 v2, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v7, v2, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_228

    invoke-static {v7}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v13

    or-int/lit16 v13, v13, 0x1000

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v6, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v13, v9}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v7, v0}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_228
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_263

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_263

    move/from16 v0, p1

    iput v0, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_23f
    :goto_23f
    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    if-nez v19, :cond_28c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_258
    move-object/from16 v0, v20

    iput-object v7, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v16, :cond_2b1

    :goto_25e
    move-object/from16 v0, v20

    iput-boolean v12, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-object v7

    :cond_263
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_275

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_275

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_23f

    :cond_275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move-object/from16 v6, p0

    move/from16 v9, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v12

    goto :goto_23f

    :cond_28c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2ac

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_258

    :cond_2ac
    move-object/from16 v20, v19

    check-cast v20, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    goto :goto_258

    :cond_2b1
    const/4 v12, 0x0

    goto :goto_25e
.end method

.method unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-get1(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_b
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-set1(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)Lcom/android/internal/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-set0(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)Z

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method updateViewCacheSize()V
    .registers 5

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget v0, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    :goto_c
    iget v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_19
    if-ltz v1, :cond_2d

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_2d

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    goto :goto_c

    :cond_2d
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    return v1

    :cond_11
    iget v3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_21

    iget v3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3b

    :cond_21
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_56

    return v2

    :cond_56
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v6, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_73

    :goto_72
    return v1

    :cond_73
    move v1, v2

    goto :goto_72

    :cond_75
    return v1
.end method

.method viewRangeUpdate(II)V
    .registers 9

    add-int v4, p1, p2

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_a
    if-ltz v2, :cond_29

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_19

    :cond_16
    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_16

    if-ge v3, v4, :cond_16

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_16

    :cond_29
    return-void
.end method
