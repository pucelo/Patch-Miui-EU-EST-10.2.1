.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_ce

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v8, v5, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_ce

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v10, v5, Landroid/widget/AbsListView;->mLayoutMode:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_da

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get15(Landroid/widget/AbsListView;)[F

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    aput v5, v4, v10

    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    aput v5, v4, v8

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v5, v4, v10

    aget v6, v4, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->layoutChildren()V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v5, v6, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_96

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8b

    instance-of v5, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_8b

    if-eqz v2, :cond_cf

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_8b
    :goto_8b
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_96
    if-eqz v2, :cond_d5

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    if-nez v5, :cond_ac

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$CheckForLongPress;

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {v6, v7, v9}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V

    invoke-static {v5, v6}, Landroid/widget/AbsListView;->-set2(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    :cond_ac
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-static {v5, v6, v7}, Landroid/widget/AbsListView$CheckForLongPress;->-wrap0(Landroid/widget/AbsListView$CheckForLongPress;FF)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ce
    :goto_ce
    return-void

    :cond_cf
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_8b

    :cond_d5
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v11, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_ce

    :cond_da
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v11, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_ce
.end method
