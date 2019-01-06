.class Landroid/inputmethodservice/RecodingStateAnimatorView$2;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field final synthetic val$end1:F

.field final synthetic val$start1:F


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V
    .registers 4

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    iput p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->val$start1:F

    iput p3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->val$end1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v1

    aget-object v2, v1, v5

    iget v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->val$start1:F

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->val$end1:F

    iget v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->val$start1:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    rsub-int v0, v1, 0xff

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$2;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
