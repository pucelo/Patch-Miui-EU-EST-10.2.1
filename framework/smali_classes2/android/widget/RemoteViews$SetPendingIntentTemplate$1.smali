.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v7, p2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4a

    move-object v6, p2

    check-cast v6, Landroid/view/ViewGroup;

    instance-of v7, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v7, :cond_12

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    :cond_12
    if-nez v6, :cond_15

    return-void

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2f

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x102024b

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Landroid/content/Intent;

    if-eqz v7, :cond_32

    move-object v1, v5

    check-cast v1, Landroid/content/Intent;

    :cond_2f
    if-nez v1, :cond_35

    return-void

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_35
    invoke-static {p2}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v8, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v8, v8, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v7, p2, v8, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    :cond_4a
    return-void
.end method
