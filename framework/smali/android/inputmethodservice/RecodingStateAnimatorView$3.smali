.class Landroid/inputmethodservice/RecodingStateAnimatorView$3;
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

.field final synthetic val$end2:F

.field final synthetic val$start2:F


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V
    .registers 4

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    iput p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->val$start2:F

    iput p3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->val$end2:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->val$start2:F

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->val$end2:F

    iget v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->val$start2:F

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$3;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
