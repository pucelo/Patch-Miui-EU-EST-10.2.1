.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field public static final DOWN_ARROW:I = -0x1

.field public static final NO_ARROW:I = 0x0

.field public static final UP_ARROW:I = 0x1


# instance fields
.field private mContent:Landroid/view/ViewGroup;

.field private mDirection:I

.field private mDownArrow:Landroid/widget/ImageView;

.field private mLeftRoundCorner:I

.field private mOffset:I

.field private mRightRoundCorner:I

.field private mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    return-void
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private init()V
    .registers 2

    const v0, 0x110200e1

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    const v0, 0x110200e0

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 17

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    if-nez v5, :cond_15

    :cond_b
    const-string/jumbo v5, "FloatPanelView"

    const-string/jumbo v6, "couldn\'t find view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_94

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    :cond_2f
    :goto_2f
    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9c

    move v4, p3

    :goto_47
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Landroid/widget/FloatPanelView;->mOffset:I

    add-int v3, v5, v6

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_a5

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int v3, v5, v6

    :cond_6a
    :goto_6a
    add-int v5, v3, v2

    add-int v6, v4, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    if-ne v4, p3, :cond_b3

    move v4, v1

    :goto_74
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    :goto_93
    return-void

    :cond_94
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2f

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    goto :goto_2f

    :cond_9c
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int v4, p3, v5

    goto :goto_47

    :cond_a5
    sub-int v5, p4, v2

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_6a

    sub-int v5, p4, v2

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int v3, v5, v6

    goto :goto_6a

    :cond_b3
    move v4, p3

    goto :goto_74

    :cond_b5
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_93
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    iget v2, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    :cond_8
    :goto_8
    if-nez v0, :cond_29

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/FloatPanelView;->setMeasuredDimension(II)V

    return-void

    :cond_21
    iget v2, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    goto :goto_8

    :cond_29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_b
.end method

.method public setArrow(I)V
    .registers 3

    iget v0, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setContent(Landroid/view/ViewGroup;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->removeAllViews()V

    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    :cond_18
    return-void
.end method

.method public setLeftCorner(I)V
    .registers 3

    iget v0, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setOffset(I)V
    .registers 3

    iget v0, p0, Landroid/widget/FloatPanelView;->mOffset:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/FloatPanelView;->mOffset:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setRightCorner(I)V
    .registers 3

    iget v0, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    :cond_9
    return-void
.end method
