.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field private start:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, -0x1

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_11

    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    :goto_7
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    :cond_e
    if-gez p3, :cond_13

    return-void

    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v4, 0x110c0034

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_28
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_13

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    :cond_10
    if-gez p3, :cond_15

    return v4

    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    instance-of v3, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_35

    const/4 v3, 0x0

    if-eqz v3, :cond_35

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-wrap2(Lcom/android/internal/app/ResolverActivity;)V

    return v5

    :cond_35
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v5
.end method
