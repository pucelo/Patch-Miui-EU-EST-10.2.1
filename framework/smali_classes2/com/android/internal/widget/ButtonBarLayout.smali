.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    iput v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x140

    if-lt v2, v3, :cond_28

    const/4 v0, 0x1

    :goto_18
    sget-object v2, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 5

    move v1, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 v2, -0x1

    return v2
.end method

.method private isStacked()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setStacked(Z)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_2f

    const/4 v3, 0x5

    :goto_a
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    const v3, 0x1020410

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1d

    if-eqz p1, :cond_32

    const/16 v3, 0x8

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    :goto_23
    if-ltz v1, :cond_34

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_2f
    const/16 v3, 0x50

    goto :goto_a

    :cond_32
    const/4 v3, 0x4

    goto :goto_1a

    :cond_34
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-boolean v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_18

    iget v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v10, v11, :cond_16

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_16
    iput v10, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    :cond_18
    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-nez v11, :cond_aa

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_aa

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v8, 0x1

    :goto_2e
    move/from16 v0, p2

    invoke-super {p0, v4, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v11, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_50

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_50

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v11, -0x1000000

    and-int v6, v5, v11

    const/high16 v11, 0x1000000

    if-ne v6, v11, :cond_50

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    const/4 v8, 0x1

    :cond_50
    if-eqz v8, :cond_55

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_55
    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v3

    if-ltz v3, :cond_a0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    add-int/lit8 v7, v11, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_ad

    add-int/lit8 v11, v3, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v9

    if-ltz v9, :cond_a0

    int-to-float v11, v7

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v7, v11

    :cond_a0
    :goto_a0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result v11

    if-eq v11, v7, :cond_a9

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    :cond_a9
    return-void

    :cond_aa
    move/from16 v4, p1

    goto :goto_2e

    :cond_ad
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_a0
.end method

.method public setAllowStacking(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    :cond_18
    return-void
.end method
