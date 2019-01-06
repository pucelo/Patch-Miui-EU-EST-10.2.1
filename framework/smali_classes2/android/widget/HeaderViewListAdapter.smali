.class public Landroid/widget/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 5
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mIsFilterable:Z

    if-nez p1, :cond_26

    sget-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    :goto_f
    if-nez p2, :cond_29

    sget-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    :goto_15
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    :goto_23
    iput-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    return-void

    :cond_26
    iput-object p1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_f

    :cond_29
    iput-object p2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_15

    :cond_2c
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    iget-boolean v2, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_18
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_15
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFootersCount()I
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    if-ge p1, v2, :cond_11

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v3

    :cond_11
    sub-int v1, p1, v2

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_27
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v3
.end method

.method public getItemId(I)J
    .registers 8

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1b

    if-lt p1, v2, :cond_1b

    sub-int v1, p1, v2

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    return-wide v4

    :cond_1b
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public getItemViewType(I)I
    .registers 6

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1b

    if-lt p1, v2, :cond_1b

    sub-int v1, p1, v2

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    return v3

    :cond_1b
    const/4 v3, -0x2

    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    if-ge p1, v2, :cond_11

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v3

    :cond_11
    sub-int v1, p1, v2

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_27
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v3
.end method

.method public getViewTypeCount()I
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isEnabled(I)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    if-ge p1, v2, :cond_11

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    return v3

    :cond_11
    sub-int v1, p1, v2

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    return v3

    :cond_27
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    return v3
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_9
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_2d

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    :cond_29
    iput-boolean v2, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    const/4 v2, 0x1

    return v2

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_30
    return v2
.end method

.method public removeHeader(Landroid/view/View;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_2d

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    :cond_29
    iput-boolean v2, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    const/4 v2, 0x1

    return v2

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_30
    return v2
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_9
    return-void
.end method