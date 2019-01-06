.class Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;
.super Ljava/lang/Object;
.source "KeyguardVerticalMoveHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)F

    move-result v2

    sub-float v0, v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
