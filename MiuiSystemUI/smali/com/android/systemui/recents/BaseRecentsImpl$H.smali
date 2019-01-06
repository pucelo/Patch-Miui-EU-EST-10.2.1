.class Lcom/android/systemui/recents/BaseRecentsImpl$H;
.super Landroid/os/Handler;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/recents/BaseRecentsImpl$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl$H;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x69

    const/16 v8, 0x65

    const/4 v7, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap3(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    goto :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get12(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v4

    const/16 v5, 0x2d0

    if-eq v4, v5, :cond_5

    const/16 v1, 0x36

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x28

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppEnterRecentsAnim()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v4, "RecentsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMessage: MSG_START_RECENTS_ANIAMTION mRecentsVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get11(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get11(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4, v10}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set4(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/BaseRecentsImpl$H$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$H$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$H;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v4, 0x14

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v5, v10}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    invoke-direct {v5, v7}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4, v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set4(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureShowFirstCardEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureShowFirstCardEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v4, "RecentsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMessage: MSG_ZOOM_RECENT_VIEW mRecentsVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get11(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mIsStartRecent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get11(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)J

    move-result-wide v6

    sub-long v2, v4, v6

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v5, v2, v3}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v4, 0x14

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4, v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set4(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_7
        0x67 -> :sswitch_b
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_6
        0x6b -> :sswitch_a
        0xa11 -> :sswitch_0
        0xa75 -> :sswitch_1
        0xad9 -> :sswitch_2
        0xb3d -> :sswitch_3
    .end sparse-switch
.end method
