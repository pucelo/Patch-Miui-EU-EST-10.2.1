.class Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView$8;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v1, v0, v5

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v5

    iget v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v4

    aget-object v4, v4, v5

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMinRad:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap2(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
