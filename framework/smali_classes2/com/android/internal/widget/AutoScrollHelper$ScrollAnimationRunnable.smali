.class Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get0(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    :cond_a
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get2(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set2(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->start()V

    :cond_20
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-wrap0(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3c

    :cond_36
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set0(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    return-void

    :cond_3c
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get1(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set1(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-wrap3(Lcom/android/internal/widget/AutoScrollHelper;)V

    :cond_4e
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->scrollTargetBy(II)V

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get4(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
