.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 19

    invoke-virtual {p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v11

    if-nez v11, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    move v7, v10

    move v9, v5

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v4, :cond_6a

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p4

    if-ne v2, v0, :cond_3a

    if-nez v3, :cond_49

    instance-of v11, v2, Landroid/view/ViewGroup;

    if-eqz v11, :cond_49

    move-object v11, v2

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-nez v11, :cond_49

    :cond_37
    :goto_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_3a
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_37

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_37

    :cond_49
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_37

    :cond_6a
    if-ge v7, v8, :cond_6e

    if-lt v9, v1, :cond_6f

    :cond_6e
    return-void

    :cond_6f
    if-lez v9, :cond_7f

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7f
    if-lez v7, :cond_8e

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v9, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8e
    if-ge v8, v10, :cond_9c

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v8, v9, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9c
    if-ge v1, v5, :cond_aa

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v1, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_aa
    return-void
.end method

.method public hasFallback()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-void
.end method
