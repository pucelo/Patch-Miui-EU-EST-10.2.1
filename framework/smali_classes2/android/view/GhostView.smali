.class public Landroid/view/GhostView;
.super Landroid/view/View;
.source "GhostView.java"


# instance fields
.field private mBeingMoved:Z

.field private mReferences:I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object p0, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v0

    return-object v0
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;
    .registers 14

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-nez v9, :cond_11

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    iget-object v5, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    iget-object v1, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    const/4 v7, 0x0

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eq v2, v5, :cond_30

    iget v7, v1, Landroid/view/GhostView;->mReferences:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_30
    if-nez v1, :cond_73

    if-nez p2, :cond_3c

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_3c
    new-instance v1, Landroid/view/GhostView;

    invoke-direct {v1, p0}, Landroid/view/GhostView;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-static {p1, v6}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p1, v1}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v9, v8}, Landroid/view/GhostView;->moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I

    move-result v0

    iget-object v9, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v9, v6, v1, v8, v0}, Landroid/view/GhostView;->insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V

    iput v7, v1, Landroid/view/GhostView;->mReferences:I

    :cond_6c
    :goto_6c
    iget v9, v1, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Landroid/view/GhostView;->mReferences:I

    return-object v1

    :cond_73
    if-eqz p2, :cond_6c

    invoke-virtual {v1, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_6c
.end method

.method public static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static copySize(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method public static getGhost(Landroid/view/View;)Landroid/view/GhostView;
    .registers 2

    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    return-object v0
.end method

.method private static getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    move v1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_7
    if-gt v1, v0, :cond_2e

    add-int v5, v1, v0

    div-int/lit8 v2, v5, 0x2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/GhostView;

    iget-object v5, v3, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Landroid/view/GhostView;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2b

    add-int/lit8 v1, v2, 0x1

    :goto_27
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_2b
    add-int/lit8 v0, v2, -0x1

    goto :goto_27

    :cond_2e
    return v1
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_f
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/GhostView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, -0x1

    if-ne p4, v2, :cond_7

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_6
    return-void

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-static {p0, v1, p3, p4}, Landroid/view/GhostView;->getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_21

    :cond_1d
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_21
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6
.end method

.method private static isGhostWrapper(Landroid/view/View;)Z
    .registers 6

    const/4 v4, 0x0

    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_16

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/GhostView;

    return v2

    :cond_16
    return v4
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_2d

    invoke-virtual {v6}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    :goto_14
    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_27

    if-eqz v3, :cond_2f

    invoke-virtual {v6, v2, v4}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    :goto_1e
    if-nez v7, :cond_31

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_24
    if-ne v0, p0, :cond_38

    const/4 v5, 0x0

    :cond_27
    :goto_27
    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_2c
    return v5

    :cond_2d
    const/4 v3, 0x0

    goto :goto_14

    :cond_2f
    move v1, v4

    goto :goto_1e

    :cond_31
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_24

    :cond_38
    if-ne v0, p1, :cond_3c

    const/4 v5, 0x1

    goto :goto_27

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_19

    :cond_17
    const/4 v5, 0x1

    return v5

    :cond_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    :goto_26
    if-ge v2, v1, :cond_3e

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq v4, v0, :cond_3b

    invoke-static {v4, v0}, Landroid/view/GhostView;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_46

    const/4 v3, 0x1

    :goto_45
    return v3

    :cond_46
    const/4 v3, 0x0

    goto :goto_45
.end method

.method private static moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v5, -0x1

    return v5

    :cond_9
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2a

    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v3, v4, -0x2

    :goto_19
    if-ltz v3, :cond_25

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_26

    :cond_25
    return v1

    :cond_26
    move v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_2a
    add-int/lit8 v3, v4, -0x2

    :goto_2c
    if-ltz v3, :cond_4e

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/GhostView;

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/view/GhostView;->mBeingMoved:Z

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iput-boolean v6, v2, Landroid/view/GhostView;->mBeingMoved:Z

    :cond_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2c

    :cond_4e
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_56

    const/4 v1, -0x1

    :goto_55
    return v1

    :cond_56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_60
    if-ltz v3, :cond_6e

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_60

    :cond_6e
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_55
.end method

.method public static removeGhost(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-eqz v0, :cond_1d

    iget v3, v0, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/view/GhostView;->mReferences:I

    iget v3, v0, Landroid/view/GhostView;->mReferences:I

    if-nez v3, :cond_1d

    invoke-virtual {v0}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v1, p0, Landroid/view/GhostView;->mBeingMoved:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object v3, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    instance-of v2, p1, Landroid/view/DisplayListCanvas;

    if-eqz v2, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    iget-object v2, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View;->mRecreateDisplayList:Z

    iget-object v2, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    :cond_21
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    iget-object v0, p0, Landroid/view/GhostView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-ne v1, p0, :cond_11

    if-nez p1, :cond_12

    const/4 v0, 0x4

    :goto_c
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method
