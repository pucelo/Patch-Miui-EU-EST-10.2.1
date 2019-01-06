.class Landroid/inputmethodservice/RecodingStateAnimatorView$9;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v1, v0, v5

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v5

    iget v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v5

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v1, v0, v4

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v4

    iget v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v4

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$9;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap2(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
