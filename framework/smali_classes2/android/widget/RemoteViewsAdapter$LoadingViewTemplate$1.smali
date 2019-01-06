.class Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->this$1:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    const-string/jumbo v0, "RemoteViewsAdapter"

    const-string/jumbo v1, "Error inflating first RemoteViews"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->this$1:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->onError(Ljava/lang/Exception;)V

    goto :goto_17
.end method
