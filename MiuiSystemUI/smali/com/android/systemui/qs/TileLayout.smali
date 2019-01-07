.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mColumns:I

.field protected mContentHeight:I

.field protected mContentMarginBottom:I

.field protected mContentMarginHorizontal:I

.field protected mContentMarginTop:I

.field private mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    return-void
.end method

.method private static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginHorizontal:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getQuickSettingsColumns(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_settings_layout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method private getRowTop(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getTop()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v0, v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v0, v9

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    if-eqz v2, :cond_2

    sub-int v5, v8, v3

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sub-int v3, v5, v9

    :goto_2
    iget-object v9, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v10, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v3, v7, v5, v10}, Lcom/android/systemui/plugins/qs/QSTileView;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int v5, v3, v9

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginHorizontal:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    move-object v0, p0

    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v5}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v6}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/plugins/qs/QSTileView;->measure(II)V

    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/TileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 7

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0036

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4
	
	invoke-direct {p0, v4}, Lcom/android/systemui/qs/TileLayout;->getQuickSettingsColumns(I)I

    move-result v4

    
	
	iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    const-string v6, "number_toggles_columns_expanded"

    invoke-static {v4, v6}, Landroid/preference/MyPreference;->getKeyInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x4

    if-ge v4, v6, :cond_jump

    const/4 v4, 0x4

    :cond_jump
	
	

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v4, 0x7f0b0037

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x7f070370

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f070373

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginTop:I

    const v4, 0x7f070372

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginHorizontal:I

    const v4, 0x7f070371

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginBottom:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v4, v0, :cond_0

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v4, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->requestLayout()V

    return v5

    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    if-ne v4, v1, :cond_0

    const/4 v4, 0x0

    return v4
.end method
