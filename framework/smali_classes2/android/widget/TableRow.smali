.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private mColumnWidths:[I

.field private mConstrainedColumnWidths:[I

.field private mNumColumns:I


# direct methods
.method static synthetic -set0(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 2

    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method private initTableRow()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TableRow;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow$ChildrenTracker;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->-wrap0(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_11
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private mapIndexAndColumns()V
    .registers 10

    iget-object v8, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v8, :cond_38

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v2

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_36

    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    iget v8, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v8, v6, :cond_25

    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    :cond_25
    const/4 v4, 0x0

    :goto_26
    iget v8, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v4, v8, :cond_33

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_26

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_36
    iput v6, p0, Landroid/widget/TableRow;->mNumColumns:I

    :cond_38
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/TableRow$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    iget v1, v0, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method getColumnsWidths(II)[I
    .registers 13

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v4

    iget-object v7, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v7, v7

    if-eq v4, v7, :cond_12

    :cond_e
    new-array v7, v4, [I

    iput-object v7, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    :cond_12
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v4, :cond_65

    invoke-virtual {p0, v2}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_62

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow$LayoutParams;

    iget v7, v3, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5f

    iget v7, v3, Landroid/widget/TableRow$LayoutParams;->width:I

    packed-switch v7, :pswitch_data_66

    iget v7, v3, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_3d
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, v3, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    add-int v6, v7, v8

    aput v6, v1, v2

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :pswitch_50
    const/4 v7, -0x2

    invoke-static {p1, v9, v7}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_3d

    :pswitch_56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    goto :goto_3d

    :cond_5f
    aput v9, v1, v2

    goto :goto_4d

    :cond_62
    aput v9, v1, v2

    goto :goto_4d

    :cond_65
    return-object v1

    :pswitch_data_66
    .packed-switch -0x2
        :pswitch_50
        :pswitch_56
    .end packed-switch
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v1, :cond_9

    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    :cond_9
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_16

    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_16
    return-object v3
.end method

.method public getVirtualChildCount()I
    .registers 2

    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    :cond_7
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v14, :cond_ae

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/TableRow$LayoutParams;

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget v13, v11, Landroid/widget/TableRow$LayoutParams;->span:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v13, :cond_20

    add-int v14, p2, v8

    aget v14, v6, v14

    add-int/2addr v5, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_20
    iget v7, v11, Landroid/widget/TableRow$LayoutParams;->gravity:I

    invoke-static {v7}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    const/high16 v12, -0x80000000

    :cond_2a
    iget v14, v11, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    sub-int v14, v5, v14

    iget v15, v11, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TableRow;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TableRow;->mPaddingBottom:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    add-int v14, v14, p6

    iget v15, v11, Landroid/widget/TableRow$LayoutParams;->height:I

    move/from16 v0, p5

    invoke-static {v0, v14, v15}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    if-eqz v9, :cond_9a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    sub-int v15, v5, v3

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableRow;->getLayoutDirection()I

    move-result v10

    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v14, v1, 0x7

    packed-switch v14, :pswitch_data_b2

    :goto_75
    :pswitch_75
    return-void

    :pswitch_76
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    const/16 v16, 0x0

    aput v15, v14, v16

    goto :goto_75

    :pswitch_87
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    const/16 v16, 0x0

    aput v15, v14, v16

    goto :goto_75

    :cond_9a
    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    invoke-static {v11}, Landroid/widget/TableRow$LayoutParams;->-get0(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v16, v15, v17

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    goto :goto_75

    :cond_ae
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    goto :goto_75

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_87
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_76
    .end packed-switch
.end method

.method measureNullChild(I)I
    .registers 3

    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget v0, v0, p1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableRow;->layoutHorizontal(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    return-void
.end method

.method setColumnCollapsed(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_e

    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void

    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method setColumnsWidthConstraints([I)V
    .registers 4

    if-eqz p1, :cond_9

    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->-wrap0(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
