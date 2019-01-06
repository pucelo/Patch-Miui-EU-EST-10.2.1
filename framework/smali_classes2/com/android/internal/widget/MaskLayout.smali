.class public Lcom/android/internal/widget/MaskLayout;
.super Landroid/widget/FrameLayout;
.source "MaskLayout.java"


# instance fields
.field private mDrawTouchMask:Z

.field private mMaskColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14

    iget-boolean v0, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    iget v0, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v7

    :cond_2e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MaskLayout;->getDrawableState()[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/MaskLayout;->PRESSED_STATE_SET:[I

    invoke-static {v2, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/android/internal/widget/MaskLayout;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v2, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    :goto_15
    iget-boolean v2, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    if-eq v2, v0, :cond_1e

    iput-boolean v0, p0, Lcom/android/internal/widget/MaskLayout;->mDrawTouchMask:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MaskLayout;->invalidate()V

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public setMaskColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/MaskLayout;->mMaskColor:I

    return-void
.end method
