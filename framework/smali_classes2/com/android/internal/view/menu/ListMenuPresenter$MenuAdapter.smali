.class Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 7

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_27

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v1, :cond_24

    iput v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_27
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .registers 5

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-static {v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->-get0(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    move-result v3

    sub-int v0, v2, v3

    iget v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v2, v0, -0x1

    return v2
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 4

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->-get0(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_19

    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_19

    add-int/lit8 p1, p1, 0x1

    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    if-nez p2, :cond_f

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_f
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
