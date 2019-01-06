.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# instance fields
.field private mIndex:I

.field private mNestedViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews$ViewGroupActionAdd;)I
    .registers 2

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    return v0
.end method

.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-eqz p3, :cond_11

    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->-wrap6(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    :cond_11
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;I)V
    .registers 12

    const/4 v5, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v5}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    new-instance v0, Landroid/widget/RemoteViews;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ViewGroupActionAdd"

    return-object v0
.end method

.method public hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-get3(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-get3(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    iget v5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v5}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1b

    :cond_16
    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    move-result-object v5

    return-object v5

    :cond_1b
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v5, v0, v2, v6, p3}, Landroid/widget/RemoteViews;->-wrap2(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v5}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v4

    if-nez v4, :cond_42

    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v3}, Landroid/widget/RemoteViews$AsyncApplyTask;->-get0(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v5

    :cond_42
    iget v5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    invoke-direct {v5, p0, v3, v4, v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;)V

    return-object v5
.end method

.method public mergeBehavior()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public prefersAsyncApply()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-wrap8(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
