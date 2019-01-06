.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v6, 0x800003

    iput v6, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_3e

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_3e
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-lez v1, :cond_48

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_48
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_59

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    :cond_59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_29

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_20

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_20
    if-gez v2, :cond_23

    const/4 v2, 0x0

    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_29
    return-void

    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_49

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_49
    if-lez v2, :cond_23

    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 12

    const/4 v7, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_c

    return v7

    :cond_c
    iget-boolean v2, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3c

    if-eq v0, v3, :cond_3c

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3c

    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    const/4 v1, 0x1

    :cond_3c
    if-nez v1, :cond_43

    if-eq v0, v3, :cond_43

    sparse-switch p1, :sswitch_data_17e

    :cond_43
    :goto_43
    if-eqz v1, :cond_164

    return v3

    :sswitch_46
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_59

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_43

    :cond_59
    const/4 v1, 0x1

    goto :goto_43

    :sswitch_5b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_6e

    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_43

    :cond_6e
    const/4 v1, 0x1

    goto :goto_43

    :sswitch_70
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_43

    :cond_81
    const/4 v1, 0x1

    goto :goto_43

    :cond_83
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_94

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto :goto_43

    :cond_94
    const/4 v1, 0x1

    goto :goto_43

    :sswitch_96
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_a7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_43

    :cond_a7
    const/4 v1, 0x1

    goto :goto_43

    :cond_a9
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_ba

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto :goto_43

    :cond_ba
    const/4 v1, 0x1

    goto :goto_43

    :sswitch_bc
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_ce

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_ce
    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_d1
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_e3

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_e3
    const/4 v1, 0x1

    goto/16 :goto_43

    :sswitch_e6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_f8

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_f8
    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_fb
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_10d

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_10d
    const/4 v1, 0x1

    goto/16 :goto_43

    :sswitch_110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_122

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_122
    const/4 v1, 0x1

    goto/16 :goto_43

    :sswitch_125
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_137

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_137
    const/4 v1, 0x1

    goto/16 :goto_43

    :sswitch_13a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_14f

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_14c

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_14c
    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_14f
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_161

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v1

    goto/16 :goto_43

    :cond_161
    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_164
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_16b

    return v3

    :cond_16b
    packed-switch v0, :pswitch_data_1a4

    return v7

    :pswitch_16f
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :pswitch_174
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :pswitch_179
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :sswitch_data_17e
    .sparse-switch
        0x13 -> :sswitch_70
        0x14 -> :sswitch_96
        0x15 -> :sswitch_46
        0x16 -> :sswitch_5b
        0x3d -> :sswitch_13a
        0x5c -> :sswitch_bc
        0x5d -> :sswitch_e6
        0x7a -> :sswitch_110
        0x7b -> :sswitch_125
    .end sparse-switch

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_174
        :pswitch_179
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 14

    const/4 v9, 0x0

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    iget v8, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    sub-int v0, v1, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v0, :cond_60

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    :cond_39
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v7, :cond_46

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_46
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v7, :cond_60

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_54

    const/4 p1, 0x1

    :cond_54
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_60
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14

    const/4 v9, 0x0

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_61

    if-lez p3, :cond_61

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    iget v9, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    sub-int v7, v2, v6

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    if-lez v7, :cond_61

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_61

    :cond_39
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_61

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_54

    const/4 p1, 0x1

    :cond_54
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_61
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10

    const/4 v7, 0x1

    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    const/4 v0, 0x0

    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    if-lez v1, :cond_32

    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    :goto_16
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_1c

    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_1c
    packed-switch v4, :pswitch_data_74

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    if-gez v3, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    packed-switch v4, :pswitch_data_7a

    :goto_31
    return v0

    :cond_32
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    :pswitch_3b
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    :pswitch_40
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    :pswitch_4a
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5a

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    :cond_5a
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    :pswitch_5f
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_6f

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    :cond_6f
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_40
        :pswitch_5f
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 9

    const/4 v1, 0x0

    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int v0, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    :cond_14
    :goto_14
    if-ge p2, v0, :cond_30

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_30

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object v1, v2

    :cond_22
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_14

    :cond_30
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v9, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v6, -0x1

    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_4f

    rem-int v12, v9, v4

    sub-int v7, v9, v12

    :goto_13
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v12, :cond_69

    move v12, v6

    :goto_24
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    iput v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_6b

    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_4e
    return-object v8

    :cond_4f
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    sub-int v12, v6, v4

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_13

    :cond_69
    move v12, v7

    goto :goto_24

    :cond_6b
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_4e
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_1d

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 18

    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v10

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v7, -0x1

    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_4a

    rem-int v13, v10, v4

    sub-int v8, v10, v13

    :goto_11
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v13, :cond_64

    move v13, v7

    :goto_20
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    iput v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_66

    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :goto_49
    return-object v9

    :cond_4a
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    sub-int v13, v7, v4

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_11

    :cond_64
    move v13, v8

    goto :goto_20

    :cond_66
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_49
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 15

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v4, -0x1

    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_1d

    rem-int v10, p1, v6

    sub-int v5, p1, v10

    :goto_b
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v10, :cond_37

    move v10, v4

    :goto_10
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-nez v7, :cond_39

    const/4 v10, 0x0

    return-object v10

    :cond_1d
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    sub-int v10, v4, v6

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_b

    :cond_37
    move v10, v5

    goto :goto_10

    :cond_39
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_64

    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_61

    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    :cond_61
    :goto_61
    if-eqz v8, :cond_87

    return-object v8

    :cond_64
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_61

    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_61

    :cond_87
    if-eqz v0, :cond_8a

    return-object v0

    :cond_8a
    return-object v1
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    :cond_f
    :goto_f
    if-le p2, v0, :cond_2a

    if-ltz p1, :cond_2a

    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1a

    move-object v1, v2

    :cond_1a
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_f

    :cond_2a
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_36

    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_36
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8

    move v0, p1

    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    sub-int v0, p1, p2

    :cond_d
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5

    move v0, p1

    if-lez p3, :cond_5

    add-int v0, p1, p2

    :cond_5
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_29

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1d
    sparse-switch p2, :sswitch_data_62

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_29
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1d

    :sswitch_3e
    if-ne p1, v3, :cond_41

    :goto_40
    return v4

    :cond_41
    move v4, v5

    goto :goto_40

    :sswitch_43
    if-nez v3, :cond_46

    :goto_45
    return v4

    :cond_46
    move v4, v5

    goto :goto_45

    :sswitch_48
    if-ne p1, v2, :cond_4b

    :goto_4a
    return v4

    :cond_4b
    move v4, v5

    goto :goto_4a

    :sswitch_4d
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_52

    :goto_51
    return v4

    :cond_52
    move v4, v5

    goto :goto_51

    :sswitch_54
    if-ne p1, v3, :cond_59

    if-nez v3, :cond_59

    move v5, v4

    :cond_59
    return v5

    :sswitch_5a
    if-ne p1, v2, :cond_61

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_61

    move v5, v4

    :cond_61
    return v5

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_5a
        0x2 -> :sswitch_54
        0x11 -> :sswitch_48
        0x21 -> :sswitch_4d
        0x42 -> :sswitch_3e
        0x82 -> :sswitch_43
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 18

    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v1

    :cond_1a
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v9, v0, v2

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v3
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 23

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_7b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_79

    move v1, v12

    :goto_23
    sub-int v5, v3, v1

    :goto_25
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_8e

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_39
    :goto_39
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v17, v0

    const/4 v8, 0x0

    if-eqz v14, :cond_b8

    const/16 v16, -0x1

    :goto_4e
    move/from16 v2, p1

    :goto_50
    if-ge v2, v15, :cond_c0

    move/from16 v0, v17

    if-ne v2, v0, :cond_bb

    const/4 v6, 0x1

    :goto_57
    if-eqz p3, :cond_bd

    const/4 v7, -0x1

    :goto_5a
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    mul-int v1, v16, v9

    add-int/2addr v5, v1

    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_6e

    mul-int v1, v16, v12

    add-int/2addr v5, v1

    :cond_6e
    if-eqz v6, :cond_76

    if-nez v11, :cond_74

    if-eqz v13, :cond_76

    :cond_74
    move-object/from16 v18, v8

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_79
    const/4 v1, 0x0

    goto :goto_23

    :cond_7b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8c

    move v1, v12

    :goto_89
    add-int v5, v3, v1

    goto :goto_25

    :cond_8c
    const/4 v1, 0x0

    goto :goto_89

    :cond_8e
    add-int/lit8 v15, p1, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v1, v3, :cond_39

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    if-eqz v14, :cond_b6

    const/4 v1, -0x1

    :goto_b3
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_39

    :cond_b6
    const/4 v1, 0x1

    goto :goto_b3

    :cond_b8
    const/16 v16, 0x1

    goto :goto_4e

    :cond_bb
    const/4 v6, 0x0

    goto :goto_57

    :cond_bd
    sub-int v7, v2, p1

    goto :goto_5a

    :cond_c0
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v18, :cond_ce

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_ce
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9d

    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    rem-int v19, v16, v7

    sub-int v14, v16, v19

    :goto_29
    sub-int v12, v14, v9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v12, :cond_fd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_ed

    const/4 v8, 0x0

    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f9

    move/from16 v19, v13

    :goto_54
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    :goto_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_170

    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_9c
    return-object v15

    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    sub-int v19, v13, v7

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    sub-int v19, v9, v7

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_29

    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_4a

    :cond_f9
    move/from16 v19, v14

    goto/16 :goto_54

    :cond_fd
    if-gez v12, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_12f

    const/4 v10, 0x0

    :goto_108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13a

    move/from16 v19, v13

    :goto_112
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_6f

    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_108

    :cond_13a
    move/from16 v19, v14

    goto :goto_112

    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_162

    const/4 v10, 0x0

    :goto_146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16d

    move/from16 v19, v13

    :goto_150
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    goto/16 :goto_6f

    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_146

    :cond_16d
    move/from16 v19, v14

    goto :goto_150

    :cond_170
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_9c
.end method

.method private pinToBottom(I)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v3, v4, :cond_1c

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v2, p1, v0

    if-lez v2, :cond_1c

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 6

    const/4 v3, 0x0

    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v2, :cond_14

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v0, p1, v1

    if-gez v0, :cond_14

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 35

    const-string/jumbo v23, "setupGridItem"

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p6, :cond_17d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v15

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v23

    move/from16 v0, v23

    if-eq v15, v0, :cond_180

    const/16 v21, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v17, v0

    if-lez v17, :cond_187

    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_187

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-ne v0, v1, :cond_184

    const/4 v14, 0x1

    :goto_39
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v23

    move/from16 v0, v23

    if-eq v14, v0, :cond_18a

    const/16 v20, 0x1

    :goto_43
    if-eqz p7, :cond_18e

    if-nez v21, :cond_18e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v18

    :goto_4b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    if-nez v19, :cond_59

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v21, :cond_8d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setSelected(Z)V

    if-eqz v15, :cond_8d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_8d
    if-eqz v20, :cond_94

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setPressed(Z)V

    :cond_94
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mChoiceMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c1

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v23, v0

    if-eqz v23, :cond_192

    move-object/from16 v23, p1

    check-cast v23, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_c1
    :goto_c1
    if-eqz p7, :cond_1bf

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v23, v0

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_1bf

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_ec

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-eq v0, v1, :cond_ef

    :cond_ec
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_ef
    :goto_ef
    if-eqz v18, :cond_1d8

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/view/View;->measure(II)V

    :goto_12e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-eqz p4, :cond_1dd

    move/from16 v11, p3

    :goto_13a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v23, v6, 0x7

    packed-switch v23, :pswitch_data_21c

    :pswitch_151
    move/from16 v9, p5

    :goto_153
    if-eqz v18, :cond_1ff

    add-int v10, v9, v22

    add-int v7, v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10, v7}, Landroid/view/View;->layout(IIII)V

    :goto_15e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_177

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_177

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_177
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_17d
    const/4 v15, 0x0

    goto/16 :goto_12

    :cond_180
    const/16 v21, 0x0

    goto/16 :goto_1c

    :cond_184
    const/4 v14, 0x0

    goto/16 :goto_39

    :cond_187
    const/4 v14, 0x0

    goto/16 :goto_39

    :cond_18a
    const/16 v20, 0x0

    goto/16 :goto_43

    :cond_18e
    const/16 v18, 0x1

    goto/16 :goto_4b

    :cond_192
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_c1

    :cond_1bf
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_ef

    :cond_1d8
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_12e

    :cond_1dd
    sub-int v11, p3, v13

    goto/16 :goto_13a

    :pswitch_1e1
    move/from16 v9, p5

    goto/16 :goto_153

    :pswitch_1e5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    add-int v9, p5, v23

    goto/16 :goto_153

    :pswitch_1f3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    add-int v23, v23, p5

    sub-int v9, v23, v22

    goto/16 :goto_153

    :cond_1ff
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v23, v9, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v23, v11, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_15e

    nop

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_1e5
        :pswitch_151
        :pswitch_1e1
        :pswitch_151
        :pswitch_1f3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 15

    const/16 v12, 0x42

    const/16 v11, 0x11

    const/4 v10, 0x6

    const/4 v9, 0x0

    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v3, 0x0

    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_50

    div-int v7, v5, v4

    mul-int v6, v7, v4

    add-int v7, v6, v4

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1f
    sparse-switch p1, :sswitch_data_ac

    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v2

    if-le v5, v6, :cond_8e

    if-ne p1, v11, :cond_2e

    xor-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_32

    :cond_2e
    if-ne p1, v12, :cond_8e

    if-eqz v2, :cond_8e

    :cond_32
    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v7, v5, -0x1

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    :cond_3e
    :goto_3e
    if-eqz v3, :cond_4a

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_4a
    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_4f
    return v3

    :cond_50
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v5

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    div-int v8, v1, v4

    mul-int/2addr v8, v4

    sub-int v0, v7, v8

    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1f

    :sswitch_68
    if-lez v6, :cond_22

    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int v7, v5, v4

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    goto :goto_22

    :sswitch_77
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_22

    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int v7, v5, v4

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    goto :goto_22

    :cond_8e
    if-ge v5, v0, :cond_3e

    if-ne p1, v11, :cond_94

    if-nez v2, :cond_9a

    :cond_94
    if-ne p1, v12, :cond_3e

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_3e

    :cond_9a
    iput v10, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    goto :goto_3e

    nop

    :sswitch_data_ac
    .sparse-switch
        0x21 -> :sswitch_68
        0x82 -> :sswitch_77
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_d

    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_d
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_2c

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_2b
    return-void

    :cond_2c
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2b
.end method

.method protected computeVerticalScrollExtent()I
    .registers 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3e

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v8, v1, v4

    add-int/lit8 v8, v8, -0x1

    div-int v5, v8, v4

    mul-int/lit8 v2, v5, 0x64

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_23

    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    :cond_23
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_3d

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    :cond_3d
    return v2

    :cond_3e
    return v9
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    const/4 v10, 0x0

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-ltz v7, :cond_50

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_50

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_50

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v3, v7, v1

    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v7

    if-eqz v7, :cond_4e

    mul-int v7, v3, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int v2, v7, v8

    :goto_2e
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v2

    div-int v6, v7, v1

    mul-int/lit8 v7, v6, 0x64

    mul-int/lit8 v8, v4, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v3

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7

    :cond_4e
    const/4 v2, 0x0

    goto :goto_2e

    :cond_50
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    mul-int/lit8 v3, v2, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_28

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_28
    return v1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method fillGap(Z)V
    .registers 12

    const/16 v9, 0x22

    const/4 v8, 0x0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_3e

    const/4 v3, 0x0

    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v9, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    :cond_18
    if-lez v0, :cond_3c

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    :goto_26
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int v4, v7, v0

    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_31

    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    :cond_31
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    :goto_3b
    return-void

    :cond_3c
    move v5, v3

    goto :goto_26

    :cond_3e
    const/4 v2, 0x0

    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v9, :cond_49

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v2

    :cond_49
    if-lez v0, :cond_67

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    :goto_55
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_6e

    sub-int/2addr v4, v1

    :goto_5c
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3b

    :cond_67
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_55

    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c
.end method

.method findMotionRow(I)I
    .registers 6

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_33

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    :cond_1f
    add-int/lit8 v1, v0, -0x1

    :goto_21
    if-ltz v1, :cond_33

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_31
    sub-int/2addr v1, v2

    goto :goto_21

    :cond_33
    const/4 v3, -0x1

    return v3
.end method

.method fullScroll(I)Z
    .registers 5

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_15
    return v0

    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_10
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 36

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    if-nez v7, :cond_e

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_e
    :try_start_e
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    if-nez v32, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_25a

    if-nez v7, :cond_2c

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_2c
    return-void

    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v10, v32, v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v9

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_40c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v19, v32, v33

    if-ltz v19, :cond_83

    move/from16 v0, v19

    if-ge v0, v9, :cond_83

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    :cond_83
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    :cond_8d
    :goto_8d
    :pswitch_8d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v12, :cond_96

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    :cond_96
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    if-nez v32, :cond_e3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_a4
    .catchall {:try_start_2d .. :try_end_a4} :catchall_25a

    if-nez v7, :cond_ae

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_ae
    return-void

    :pswitch_af
    :try_start_af
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v19, v32, v33

    if-ltz v19, :cond_8d

    move/from16 v0, v19

    if-ge v0, v9, :cond_8d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    goto :goto_8d

    :pswitch_cc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    if-ltz v32, :cond_8d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    sub-int v13, v32, v33

    goto :goto_8d

    :cond_e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v30

    if-eqz v30, :cond_125

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_125

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_125

    if-eqz v12, :cond_119

    invoke-virtual {v15}, Landroid/view/View;->hasTransientState()Z

    move-result v32

    if-nez v32, :cond_119

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    move/from16 v32, v0

    if-eqz v32, :cond_11f

    :cond_119
    move-object/from16 v5, v16

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    :cond_11f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    :cond_125
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v27, v0

    if-eqz v12, :cond_14d

    const/16 v17, 0x0

    :goto_133
    move/from16 v0, v17

    if-ge v0, v9, :cond_152

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    add-int v33, v14, v17

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_133

    :cond_14d
    move-object/from16 v0, v27

    invoke-virtual {v0, v9, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_152
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_41c

    if-nez v9, :cond_2e3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_2b7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_179

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v32

    if-eqz v32, :cond_2b3

    :cond_179
    const/16 v32, -0x1

    :goto_17b
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v29

    :goto_188
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v29, :cond_349

    const/16 v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    :cond_1a2
    :goto_1a2
    if-eqz v30, :cond_1d1

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v21

    if-nez v21, :cond_1d1

    if-eqz v5, :cond_3dd

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v32

    if-eqz v32, :cond_3dd

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v26

    if-eqz v4, :cond_3d8

    if-eqz v26, :cond_3d8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v31

    const/16 v32, 0x40

    const/16 v33, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_1d1
    :goto_1d1
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_1fe
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    if-lez v32, :cond_221

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :cond_221
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_224
    .catchall {:try_start_af .. :try_end_224} :catchall_25a

    if-nez v7, :cond_22e

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_22e
    return-void

    :pswitch_22f
    if-eqz v22, :cond_23f

    :try_start_231
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11, v10}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :cond_23f
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :pswitch_247
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_258
    .catchall {:try_start_231 .. :try_end_258} :catchall_25a

    goto/16 :goto_188

    :catchall_25a
    move-exception v32

    if-nez v7, :cond_265

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_265
    throw v32

    :pswitch_266
    :try_start_266
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_188

    :pswitch_27b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :pswitch_293
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :pswitch_2ab
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v10}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :cond_2b3
    const/16 v32, 0x0

    goto/16 :goto_17b

    :cond_2b7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    add-int/lit8 v20, v32, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2cd

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v32

    if-eqz v32, :cond_2e0

    :cond_2cd
    const/16 v32, -0x1

    :goto_2cf
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :cond_2e0
    move/from16 v32, v20

    goto :goto_2cf

    :cond_2e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    if-ltz v32, :cond_314

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_314

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    if-nez v24, :cond_30f

    :goto_305
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :cond_30f
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_305

    :cond_314
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_33d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v32, v0

    if-nez v23, :cond_338

    :goto_32e
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :cond_338
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_32e

    :cond_33d
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_188

    :cond_349
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v32, v0

    if-lez v32, :cond_38d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_38a

    const/16 v18, 0x1

    :goto_361
    if-eqz v18, :cond_390

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1a2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1a2

    :cond_38a
    const/16 v18, 0x0

    goto :goto_361

    :cond_38d
    const/16 v18, 0x0

    goto :goto_361

    :cond_390
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3c5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1a2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1a2

    :cond_3c5
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1a2

    :cond_3d8
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_1d1

    :cond_3dd
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_1d1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v32, v0

    sub-int v32, v6, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    const/16 v34, 0x0

    move/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_1d1

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_40a
    .catchall {:try_start_266 .. :try_end_40a} :catchall_25a

    goto/16 :goto_1d1

    :pswitch_data_40c
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_af
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_cc
    .end packed-switch

    :pswitch_data_41c
    .packed-switch 0x1
        :pswitch_247
        :pswitch_22f
        :pswitch_266
        :pswitch_27b
        :pswitch_293
        :pswitch_2ab
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    return v2

    :cond_c
    if-ltz p1, :cond_12

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v1, :cond_13

    :cond_12
    return v2

    :cond_13
    return p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v0, :cond_37

    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_24
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    if-ge v2, v4, :cond_21

    move v4, v2

    move v1, v3

    goto :goto_21

    :cond_37
    if-ltz v1, :cond_40

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    :goto_3f
    return-void

    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_3f
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 16

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    div-int v11, v7, v6

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_31

    rem-int v2, p2, v6

    div-int v0, p2, v6

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v10, :cond_42

    iget v1, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_42

    const/4 v4, 0x1

    :goto_23
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v5

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void

    :cond_31
    add-int/lit8 v1, v7, -0x1

    sub-int v8, v1, p2

    add-int/lit8 v1, v6, -0x1

    rem-int v3, v8, v6

    sub-int v2, v1, v3

    add-int/lit8 v1, v11, -0x1

    div-int v3, v8, v6

    sub-int v0, v1, v3

    goto :goto_15

    :cond_42
    const/4 v4, 0x0

    goto :goto_23
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    div-int v2, v4, v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v3

    invoke-static {v2, v1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-gtz v1, :cond_1d

    if-lez v2, :cond_22

    :cond_1d
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 25

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    if-nez v17, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_206

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_222

    const/16 v19, 0x0

    :goto_73
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    if-lez v9, :cond_13c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    if-nez v16, :cond_a4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_13c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_13c
    if-nez v11, :cond_162

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    :cond_162
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v13, 0x0

    :goto_187
    if-ge v13, v9, :cond_19b

    add-int/2addr v15, v4

    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_198

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    :cond_198
    if-lt v15, v12, :cond_22e

    move v15, v12

    :cond_19b
    move v12, v15

    :cond_19c
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1f8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    move/from16 v0, v18

    if-gt v15, v0, :cond_1f4

    if-eqz v10, :cond_1f8

    :cond_1f4
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    :cond_1f8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    return-void

    :cond_206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_3f

    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_73

    :cond_22e
    add-int/2addr v13, v14

    goto/16 :goto_187
.end method

.method pageScroll(I)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/16 v1, 0x21

    if-ne p1, v1, :cond_1e

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_11
    :goto_11
    if-ltz v0, :cond_32

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    const/4 v1, 0x1

    return v1

    :cond_1e
    const/16 v1, 0x82

    if-ne p1, v1, :cond_11

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11

    :cond_32
    return v4
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v6

    :cond_9
    packed-switch p1, :pswitch_data_2c

    :cond_c
    return v5

    :pswitch_d
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const-string/jumbo v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v2, :cond_c

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return v6

    nop

    :pswitch_data_2c
    .packed-switch 0x1020037
        :pswitch_d
    .end packed-switch
.end method

.method sequenceScroll(I)Z
    .registers 14

    const/4 v11, 0x6

    const/4 v10, 0x0

    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_31

    div-int v8, v5, v4

    mul-int v7, v8, v4

    add-int v8, v7, v4

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v0, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1a
    const/4 v3, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_68

    :cond_1f
    :goto_1f
    if-eqz v3, :cond_2b

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_2b
    if-eqz v6, :cond_30

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_30
    return v3

    :cond_31
    add-int/lit8 v8, v0, -0x1

    sub-int v2, v8, v5

    add-int/lit8 v8, v0, -0x1

    div-int v9, v2, v4

    mul-int/2addr v9, v4

    sub-int v1, v8, v9

    sub-int v8, v1, v4

    add-int/lit8 v8, v8, 0x1

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1a

    :pswitch_45
    add-int/lit8 v8, v0, -0x1

    if-ge v5, v8, :cond_1f

    iput v11, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    if-ne v5, v1, :cond_55

    const/4 v6, 0x1

    goto :goto_1f

    :cond_55
    const/4 v6, 0x0

    goto :goto_1f

    :pswitch_57
    if-lez v5, :cond_1f

    iput v11, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    if-ne v5, v7, :cond_65

    const/4 v6, 0x1

    goto :goto_1f

    :cond_65
    const/4 v6, 0x0

    goto :goto_1f

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_57
        :pswitch_45
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_71

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput-boolean v5, p0, Landroid/widget/GridView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_6c

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_5f
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :goto_68
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void

    :cond_6c
    invoke-virtual {p0, v4, v5}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_5f

    :cond_71
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_68
.end method

.method public setColumnWidth(I)V
    .registers 3

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3

    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    :goto_9
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_15
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void

    :cond_19
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 9

    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_35

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    :goto_1d
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_38

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    :goto_27
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    if-eq v1, v3, :cond_34

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_34
    return-void

    :cond_35
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    goto :goto_1d

    :cond_38
    move v2, v4

    goto :goto_27
.end method

.method public setStretchMode(I)V
    .registers 3

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
