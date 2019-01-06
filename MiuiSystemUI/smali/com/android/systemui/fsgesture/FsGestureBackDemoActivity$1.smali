.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v12

    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v10, :cond_1

    return v9

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v6}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v7}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_3

    const/high16 v8, 0x428c0000    # 70.0f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get5(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v12}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get8(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get9(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v10, :cond_4

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get6(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x46

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_2

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_6

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v8, v6, v8

    :goto_1
    invoke-static {v9, v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    move-result v4

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get8(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_5

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionMove(F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    int-to-float v8, v1

    div-float v8, v4, v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v9

    invoke-static {v4, v5}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float/2addr v8, v6

    goto :goto_1

    :cond_7
    sget-object v8, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    goto :goto_2

    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_8

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v2, v6, v8

    :goto_3
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v8

    invoke-static {v2}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get11(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    float-to-int v5, v8

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get11(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v9

    invoke-static {v9, v5}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v2, v8, v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
