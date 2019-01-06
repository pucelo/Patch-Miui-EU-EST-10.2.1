.class Lcom/android/systemui/stackdivider/DividerView$5;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->-wrap0(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get5(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->-set1(Lcom/android/systemui/stackdivider/DividerView;I)I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->-set0(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->-set2(Lcom/android/systemui/stackdivider/DividerView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->-set3(Lcom/android/systemui/stackdivider/DividerView;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method
