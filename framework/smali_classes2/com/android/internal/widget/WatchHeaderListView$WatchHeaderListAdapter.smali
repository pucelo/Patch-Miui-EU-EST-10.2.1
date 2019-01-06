.class Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
.super Landroid/widget/HeaderViewListAdapter;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WatchHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchHeaderListAdapter"
.end annotation


# instance fields
.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private getTopPanelCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    if-nez v1, :cond_b

    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :cond_b
    return v0
.end method

.method public getCount()I
    .registers 3

    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    sub-int v1, p1, v0

    invoke-super {p0, v1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 8

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getHeadersCount()I

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_27

    if-lt p1, v2, :cond_27

    sub-int v1, p1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    return-wide v4

    :cond_27
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public getItemViewType(I)I
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getHeadersCount()I

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_27

    if-lt p1, v2, :cond_27

    sub-int v1, p1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    return v3

    :cond_27
    const/4 v3, -0x2

    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    :goto_8
    return-object v1

    :cond_9
    sub-int v1, p1, v0

    invoke-super {p0, v1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_8
.end method

.method public isEnabled(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    sub-int v1, p1, v0

    invoke-super {p0, v1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_7
.end method

.method public setTopPanel(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    return-void
.end method
