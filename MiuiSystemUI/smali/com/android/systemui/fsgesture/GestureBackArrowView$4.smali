.class Lcom/android/systemui/fsgesture/GestureBackArrowView$4;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLandroid/animation/Animator$AnimatorListener;)V
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

    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-set4(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-set0(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-set2(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->invalidate()V

    return-void
.end method
