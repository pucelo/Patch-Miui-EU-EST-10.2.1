.class Lcom/android/systemui/statusbar/phone/NavStubView$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const v12, 0x10003

    const v11, 0x10002

    const/4 v10, 0x2

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get12(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get29(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get12(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set5(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get13(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get30(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get13(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set6(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get29(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get12(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get30(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get13(Lcom/android/systemui/statusbar/phone/NavStubView;)F

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

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get14(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get38(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    if-ne v4, v11, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get8(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get36(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v5

    add-int/lit16 v5, v5, -0xa0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get24(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set8(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap4(Lcom/android/systemui/statusbar/phone/NavStubView;F)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    if-ne v4, v10, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get1(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get8(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get36(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v5

    add-int/lit16 v5, v5, -0x140

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4, v12}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set14(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "current state mode: StateMode.STATE_TASK_HOLD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get14(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$1$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$1$1;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView$1;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get19(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v5, v10, [F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get3(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const v6, 0x3f4ccccd    # 0.8f

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get19(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get14(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get38(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    if-ne v4, v12, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get8(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get36(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v5

    add-int/lit16 v5, v5, -0xf0

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4, v11}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set14(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "current state mode: StateMode.STATE_ON_DRAG"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get18(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
