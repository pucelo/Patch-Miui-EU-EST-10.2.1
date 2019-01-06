.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field private final mPageDotSize:I

.field private final mPageDotSpace:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    const v1, 0x7f070361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    return-void
.end method

.method private animate(II)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    return-void
.end method

.method private getAlpha(Z)F
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x3f333333    # 0.7f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method private setIndex(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080309

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    return-void

    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    add-int/2addr v3, v4

    mul-int v2, v3, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    sub-int v3, v5, v6

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/PageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLocation(F)V
    .locals 6

    float-to-int v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7f1100cf

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    if-eq v1, v0, :cond_0

    if-le v0, v1, :cond_1

    int-to-float v2, v1

    sub-float v2, p1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 2

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->removeViewAt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-le p1, v1, :cond_2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080309

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    return-void
.end method
