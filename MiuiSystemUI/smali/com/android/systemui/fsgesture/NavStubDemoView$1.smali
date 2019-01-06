.class Lcom/android/systemui/fsgesture/NavStubDemoView$1;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const v10, 0x10003

    const v9, 0x10002

    const/high16 v8, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get10(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get14(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v7}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get10(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set3(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get11(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get15(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v7}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get11(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set4(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get14(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get10(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get15(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get11(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get21(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get9(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get19(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v5

    add-int/lit16 v5, v5, -0x140

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4, v10}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set7(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    sget-object v4, Lcom/android/systemui/fsgesture/NavStubDemoView;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "current state mode: StateMode.STATE_TASK_HOLD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get12(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get21(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v4

    if-ne v4, v10, :cond_2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get9(Lcom/android/systemui/fsgesture/NavStubDemoView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get19(Lcom/android/systemui/fsgesture/NavStubDemoView;)I

    move-result v5

    add-int/lit16 v5, v5, -0xf0

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set7(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method
