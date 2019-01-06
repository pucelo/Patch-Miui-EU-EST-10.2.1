.class Landroid/inputmethodservice/RecodingStateAnimatorView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecodingStateAnimatorView.java"


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

.field final synthetic val$v2p1:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/animation/ValueAnimator;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    iput-object p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->val$v2p1:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get0(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->val$v2p1:Landroid/animation/ValueAnimator;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->val$v2p1:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->val$v2p1:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    new-array v1, v4, [F

    fill-array-data v1, :array_7a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    iput v2, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    iput v2, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMinRad:F

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$8$1;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get0(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_7a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v2

    iget-boolean v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    if-eqz v0, :cond_2a

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    :cond_2a
    return-void
.end method
