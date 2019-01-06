.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "PagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PagedTileLayout$1;,
        Lcom/android/systemui/qs/PagedTileLayout$2;,
        Lcom/android/systemui/qs/PagedTileLayout$PageListener;,
        Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private final mDistribute:Ljava/lang/Runnable;

.field private mListening:Z

.field private mNumPages:I

.field private mOffPage:Z

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/PagedTileLayout$TilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PagedTileLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/PagedTileLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentPage(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setOverScrollMode(I)V

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(I)V

    return-void
.end method

.method private distributeTiles()V
    .locals 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->removeAllViews()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->isFull()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v3, v5, :cond_1

    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0d00c6

    invoke-virtual {v5, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    add-int/lit8 v7, v3, 0x1

    if-eq v5, v7, :cond_4

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    if-le v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    :cond_4
    return-void

    :cond_5
    const/16 v5, 0x8

    goto :goto_3
.end method

.method private postDistributeTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setCurrentPage(IZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    if-eq v0, p1, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    if-eqz p2, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eq v0, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    goto :goto_0
.end method

.method private setPageListening(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    return-void
.end method

.method public getColumnCount()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget v0, v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    return v0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 3

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00c6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v1, v3, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/PagedTileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-void
.end method

.method public updateResources()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    :cond_1
    return v0
.end method
