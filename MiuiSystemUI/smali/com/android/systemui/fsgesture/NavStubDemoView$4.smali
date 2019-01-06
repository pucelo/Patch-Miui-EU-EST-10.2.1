.class Lcom/android/systemui/fsgesture/NavStubDemoView$4;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$4;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$4;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const-string/jumbo v0, "xScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set8(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$4;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const-string/jumbo v0, "xPivot"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set5(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    return-void
.end method
