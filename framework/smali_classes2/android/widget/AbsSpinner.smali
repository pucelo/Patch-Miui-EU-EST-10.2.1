.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$RecycleBin;,
        Landroid/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v3, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getImportantForAutofill()I

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->setImportantForAutofill(I)V

    :cond_24
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_44

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAbsSpinner()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelection(I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getAutofillType()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3

    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_12

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .registers 14

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_df

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    :goto_e
    iput v8, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_e3

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    :goto_1a
    iput v8, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_e7

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    :goto_26
    iput v8, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_eb

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    :goto_32
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    iget-boolean v8, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_3b

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    :cond_3b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_a5

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_a5

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_a5

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_69

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_69

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_69
    if-eqz v5, :cond_a5

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_83

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_83
    invoke-virtual {p0, v5, p1, p2}, Landroid/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    const/4 v1, 0x0

    :cond_a5
    if-eqz v1, :cond_bd

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    if-nez v6, :cond_bd

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    :cond_bd
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v8, 0x0

    invoke-static {v2, p2, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    const/4 v8, 0x0

    invoke-static {v3, p1, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v7, v0}, Landroid/widget/AbsSpinner;->setMeasuredDimension(II)V

    iput p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iput p1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    return-void

    :cond_df
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_e

    :cond_e3
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1a

    :cond_e7
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_26

    :cond_eb
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_32
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9

    const/4 v6, 0x1

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_25

    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncMode:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    :cond_25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    goto :goto_1d
.end method

.method public pointToPosition(II)I
    .registers 8

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_d

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_13
    if-ltz v3, :cond_2f

    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_2f
    const/4 v4, -0x1

    return v4
.end method

.method recycleAllViews()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v0

    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    iget v3, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v2, v3, v1

    invoke-virtual {v4, v2, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_7
    return-void
.end method

.method resetList()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->removeAllViewsInLayout()V

    iput v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 6

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    :cond_e
    iput-object p1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_50

    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_4e

    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_4a

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    return-void

    :cond_4e
    const/4 v0, -0x1

    goto :goto_3d

    :cond_50
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_4a
.end method

.method public setSelection(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .registers 6

    if-eqz p2, :cond_18

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_18

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_16

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsSpinner;->setSelectionInt(IZ)V

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_12

    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method setSelectionInt(IZ)V
    .registers 5

    iget v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_14

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    iget v1, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsSpinner;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_14
    return-void
.end method
