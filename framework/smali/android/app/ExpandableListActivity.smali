.class public Landroid/app/ExpandableListActivity;
.super Landroid/app/Activity;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .registers 2

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const v0, 0x1090001

    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setContentView(I)V

    return-void
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .registers 2

    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .registers 3

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .registers 3

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 8

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    if-eqz v0, :cond_29

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    :cond_29
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-boolean v1, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_41

    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_41
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    return-void
.end method

.method public onGroupCollapse(I)V
    .registers 2

    return-void
.end method

.method public onGroupExpand(I)V
    .registers 2

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    iput-object p1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .registers 5

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    return-void
.end method
