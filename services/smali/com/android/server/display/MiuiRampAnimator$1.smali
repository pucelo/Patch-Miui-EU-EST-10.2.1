.class Lcom/android/server/display/MiuiRampAnimator$1;
.super Ljava/lang/Object;
.source "MiuiRampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/MiuiRampAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get1(Lcom/android/server/display/MiuiRampAnimator;)Landroid/view/Choreographer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get3(Lcom/android/server/display/MiuiRampAnimator;)J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-float v6, v6

    const v7, 0x3089705f    # 1.0E-9f

    mul-float v5, v6, v7

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6, v2, v3}, Lcom/android/server/display/MiuiRampAnimator;->-set3(Lcom/android/server/display/MiuiRampAnimator;J)J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_78

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get8(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/android/server/display/MiuiRampAnimator;->-set0(Lcom/android/server/display/MiuiRampAnimator;F)F

    :goto_32
    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get2(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v1

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get0(Lcom/android/server/display/MiuiRampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/MiuiRampAnimator;->-set2(Lcom/android/server/display/MiuiRampAnimator;I)I

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get2(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v6

    if-eq v1, v6, :cond_64

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get6(Lcom/android/server/display/MiuiRampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get5(Lcom/android/server/display/MiuiRampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v8}, Lcom/android/server/display/MiuiRampAnimator;->-get2(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_64
    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get8(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get2(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_c1

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-wrap0(Lcom/android/server/display/MiuiRampAnimator;)V

    :cond_77
    :goto_77
    return-void

    :cond_78
    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get7(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get8(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get2(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_a8

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get0(Lcom/android/server/display/MiuiRampAnimator;)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v8}, Lcom/android/server/display/MiuiRampAnimator;->-get8(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/MiuiRampAnimator;->-set0(Lcom/android/server/display/MiuiRampAnimator;F)F

    goto :goto_32

    :cond_a8
    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    iget-object v7, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/MiuiRampAnimator;->-get0(Lcom/android/server/display/MiuiRampAnimator;)F

    move-result v7

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v8}, Lcom/android/server/display/MiuiRampAnimator;->-get8(Lcom/android/server/display/MiuiRampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/display/MiuiRampAnimator;->-set0(Lcom/android/server/display/MiuiRampAnimator;F)F

    goto/16 :goto_32

    :cond_c1
    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/display/MiuiRampAnimator;->-set1(Lcom/android/server/display/MiuiRampAnimator;Z)Z

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get4(Lcom/android/server/display/MiuiRampAnimator;)Lcom/android/server/display/MiuiRampAnimator$Listener;

    move-result-object v6

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/android/server/display/MiuiRampAnimator$1;->this$0:Lcom/android/server/display/MiuiRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/MiuiRampAnimator;->-get4(Lcom/android/server/display/MiuiRampAnimator;)Lcom/android/server/display/MiuiRampAnimator$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/display/MiuiRampAnimator$Listener;->onAnimationEnd()V

    goto :goto_77
.end method
