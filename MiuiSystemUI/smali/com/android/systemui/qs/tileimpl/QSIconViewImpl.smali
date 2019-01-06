.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# instance fields
.field private mAnimationEnabled:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field protected final mIcon:Landroid/view/View;

.field protected final mIconBgSizePx:I

.field protected mIconColorDisabled:I

.field protected mIconColorEnabled:I

.field protected final mIconSizePx:I

.field protected final mTilePaddingBelowIconPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070375

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    const v1, 0x7f07037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorEnabled:I

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorDisabled:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->addView(Landroid/view/View;)V

    return-void
.end method

.method private startAnimatorIfNeed(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method protected final exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getMeasuredWidth()I

    move-result v2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v0, v3, 0x2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 13

    const v12, 0x7f0a0223

    const v11, 0x7f0a0222

    const/4 v10, 0x2

    iget-object v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v12}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v12, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v7, v10, :cond_0

    const v1, 0x7f080152

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v7, :cond_1

    iget-object v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    return-void

    :cond_0
    const v1, 0x7f080151

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v7, v10, :cond_5

    iget v7, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorEnabled:I

    :goto_2
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/16 v7, 0x11

    invoke-static {v0, v3, v7}, Lcom/android/systemui/miui/DrawableUtils;->combine(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    iget v7, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v7, v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    move-object v3, v2

    iget v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v7, v10, :cond_6

    const/4 v4, 0x1

    :goto_3
    move v5, v4

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_7

    const/4 v5, 0x1

    :cond_3
    :goto_4
    iget v7, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v11, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v7, :cond_9

    invoke-virtual {p1, v12}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    if-eq v5, v4, :cond_8

    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_a

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->startAnimatorIfNeed(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_6
    return-void

    :cond_5
    iget v7, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorDisabled:I

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public updateResources()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorEnabled:I

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorDisabled:I

    return-void
.end method
