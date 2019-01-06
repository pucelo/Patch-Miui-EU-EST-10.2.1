.class public Landroid/app/ListFragment;
.super Landroid/app/Fragment;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ListFragment$1;,
        Landroid/app/ListFragment$2;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$1;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Landroid/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$2;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_16
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_3b

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ListFragment;->mListShown:Z

    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_b2

    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    iput-object v5, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_33
    :goto_33
    iget-object v3, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3b
    const v3, 0x10202c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_79

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    :goto_53
    const v3, 0x102039a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const v3, 0x10202e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/ListView;

    if-nez v3, :cond_81

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_79
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_53

    :cond_81
    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-nez v3, :cond_92

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_92
    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1e

    :cond_9e
    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1e

    :cond_b2
    iget-object v3, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_33

    invoke-direct {p0, v6, v6}, Landroid/app/ListFragment;->setListShown(ZZ)V

    goto/16 :goto_33
.end method

.method private setListShown(ZZ)V
    .registers 9

    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1d

    return-void

    :cond_1d
    iput-boolean p1, p0, Landroid/app/ListFragment;->mListShown:Z

    if-eqz p1, :cond_53

    if-eqz p2, :cond_48

    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3d
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_3d

    :cond_53
    if-eqz p2, :cond_7a

    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6f
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_47

    :cond_7a
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_6f
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x1090014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    iput-object v2, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    iput-object v2, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_20
    iput-object p1, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    :goto_6
    iput-object p1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v1, p0, Landroid/app/ListFragment;->mListShown:Z

    if-nez v1, :cond_27

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2a

    move v1, v2

    :goto_24
    invoke-direct {p0, v2, v1}, Landroid/app/ListFragment;->setListShown(ZZ)V

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_6

    :cond_2a
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public setListShown(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setSelection(I)V
    .registers 3

    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
