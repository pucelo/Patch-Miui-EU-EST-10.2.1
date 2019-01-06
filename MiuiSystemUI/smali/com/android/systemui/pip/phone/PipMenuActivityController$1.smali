.class Lcom/android/systemui/pip/phone/PipMenuActivityController$1;
.super Landroid/os/Handler;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3, v2, v7}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-wrap0(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipExpand()V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMinimize()V

    goto :goto_2

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipDismiss()V

    goto :goto_3

    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipShowMenu()V

    goto :goto_4

    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/pip/phone/InputConsumerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/pip/phone/InputConsumerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/InputConsumerController;->unregisterInputConsumer()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v3, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-set3(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3, v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-set2(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3, v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-set1(Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get3(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v3, v6, v7}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-wrap0(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
