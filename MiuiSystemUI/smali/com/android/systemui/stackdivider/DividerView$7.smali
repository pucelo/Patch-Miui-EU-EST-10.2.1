.class Lcom/android/systemui/stackdivider/DividerView$7;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$7;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$7;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$7;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$7;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$7;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0xc8

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    return-void
.end method
