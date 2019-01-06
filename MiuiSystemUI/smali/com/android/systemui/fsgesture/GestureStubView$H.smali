.class Lcom/android/systemui/fsgesture/GestureStubView$H;
.super Landroid/os/Handler;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;Lcom/android/systemui/fsgesture/GestureStubView$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView$H;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x41f00000    # 30.0f

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get7(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object v2

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get13(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get4(Lcom/android/systemui/fsgesture/GestureStubView;)F

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get5(Lcom/android/systemui/fsgesture/GestureStubView;)F

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    const-string/jumbo v6, "GestureStubView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage MSG_CHECK_GESTURE_STUB_TOUCHABLE diffX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " diffY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mDownX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mDownY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v6

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v6

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get13(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    const-string/jumbo v6, "GestureStubView"

    const-string/jumbo v7, "handleMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get11(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GesturesBackController;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get11(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GesturesBackController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/fsgesture/GesturesBackController;->reset()V

    :cond_4
    const/16 v6, 0x104

    invoke-virtual {p0, v6}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x14

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v12}, Lcom/android/systemui/fsgesture/GestureStubView;->-set3(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    const/16 v6, 0x101

    invoke-virtual {p0, v6}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v8}, Lcom/android/systemui/fsgesture/GestureStubView;->-set3(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get14(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v6, v8}, Lcom/android/systemui/fsgesture/GestureStubView;->setVisibility(I)V

    :cond_5
    const-string/jumbo v6, "GestureStubView"

    const-string/jumbo v7, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v8}, Lcom/android/systemui/fsgesture/GestureStubView;->-set0(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const-string/jumbo v7, "MSG_RESET_ANIMATING_STATUS"

    invoke-static {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap9(Lcom/android/systemui/fsgesture/GestureStubView;Ljava/lang/String;)V

    const-string/jumbo v6, "GestureStubView"

    const-string/jumbo v7, "reset animating status"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap5(Lcom/android/systemui/fsgesture/GestureStubView;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get3(Lcom/android/systemui/fsgesture/GestureStubView;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get3(Lcom/android/systemui/fsgesture/GestureStubView;)I

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v8}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap7(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get7(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get7(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v9}, Lcom/android/systemui/fsgesture/GestureStubView;->-set1(Lcom/android/systemui/fsgesture/GestureStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v8}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap7(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6, v12}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap7(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    goto :goto_1

    :pswitch_6
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get13(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v6

    if-nez v6, :cond_8

    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get6(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap10(Lcom/android/systemui/fsgesture/GestureStubView;)V

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap1(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/16 v7, 0x14

    invoke-static {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap0(Lcom/android/systemui/fsgesture/GestureStubView;I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get4(Lcom/android/systemui/fsgesture/GestureStubView;)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-get8(Lcom/android/systemui/fsgesture/GestureStubView;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-get17(Lcom/android/systemui/fsgesture/GestureStubView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v6

    const-wide/16 v8, 0x11

    const/16 v7, 0x105

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/16 v7, 0x14

    invoke-static {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap0(Lcom/android/systemui/fsgesture/GestureStubView;I)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto :goto_2

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get4(Lcom/android/systemui/fsgesture/GestureStubView;)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-get8(Lcom/android/systemui/fsgesture/GestureStubView;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v7}, Lcom/android/systemui/fsgesture/GestureStubView;->-get17(Lcom/android/systemui/fsgesture/GestureStubView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    cmpl-float v6, v6, v7

    if-lez v6, :cond_e

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v6}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
