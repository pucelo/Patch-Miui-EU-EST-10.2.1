.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogAbandonRunnable"
.end annotation


# instance fields
.field private mIsPending:Z

.field final synthetic this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;


# direct methods
.method private constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V

    return-void
.end method


# virtual methods
.method flush()V
    .registers 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-get3(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->run()V

    return-void
.end method

.method public run()V
    .registers 6

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-get2(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-get1(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v2

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-set0(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-set1(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    :cond_2b
    return-void
.end method

.method schedule(I)V
    .registers 6

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "SelectActionModeHelper"

    const-string/jumbo v1, "Force flushing abandon due to new scheduling request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$1:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-get3(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
