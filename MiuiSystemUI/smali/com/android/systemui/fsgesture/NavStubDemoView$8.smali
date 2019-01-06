.class Lcom/android/systemui/fsgesture/NavStubDemoView$8;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field final synthetic val$initX:I

.field final synthetic val$initY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initX:I

    iput p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set2(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get20(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set5(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get19(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set6(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->invalidate()V

    return-void
.end method
