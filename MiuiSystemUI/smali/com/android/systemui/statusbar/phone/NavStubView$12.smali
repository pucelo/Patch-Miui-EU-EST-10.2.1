.class Lcom/android/systemui/statusbar/phone/NavStubView$12;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$destPivotX:I

.field final synthetic val$destPivotY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->val$destPivotX:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->val$destPivotY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    const-string/jumbo v0, "home"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "yScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set18(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "xScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set17(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "yPivot"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set12(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "xPivot"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set11(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->IS_E10:Z

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set7(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v2, "homeAlpha"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->val$destPivotX:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->val$destPivotY:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get29(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get30(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get23(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FFIIIIZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$12;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->invalidate()V

    return-void

    :cond_1
    const-string/jumbo v0, "homeScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0
.end method
