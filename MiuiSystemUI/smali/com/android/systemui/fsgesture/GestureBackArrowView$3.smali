.class Lcom/android/systemui/fsgesture/GestureBackArrowView$3;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-get2(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-get1(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-set3(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F

    return-void
.end method
