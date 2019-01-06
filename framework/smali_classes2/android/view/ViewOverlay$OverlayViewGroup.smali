.class Landroid/view/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final mHostView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRenderNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mRight:I

    iget v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mBottom:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    :cond_16
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2d
    return-void
.end method

.method public add(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "view must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_60

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eq v1, v3, :cond_47

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, v1, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_47

    new-array v2, v7, [I

    new-array v0, v7, [I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v3, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v4

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v3, v2, v6

    aget v4, v0, v6

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_47
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_60

    iput-object v5, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :cond_60
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clear()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->removeAllViews()V

    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_e

    :cond_1e
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_23
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v2, :cond_1f

    const/4 v1, 0x0

    :goto_e
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_26

    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    iget-object v2, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_e

    :cond_26
    return-void
.end method

.method public invalidate()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    :cond_c
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_c
    return-void
.end method

.method public invalidate(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Z)V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->invalidate(Z)V

    :cond_c
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_27

    aget v0, p1, v2

    aget v1, p1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    aput v2, p1, v2

    aput v2, p1, v3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual {p0, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :cond_27
    return-object v4
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected invalidateParentCaches()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentCaches()V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_c
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidateParentIfNeeded()V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_c
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_c
    return-void
.end method

.method isEmpty()Z
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    return v0

    :cond_15
    return v1
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mHostView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate()V

    goto :goto_16
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "drawable must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1f
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewOverlay$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method
