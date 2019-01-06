.class Lcom/android/systemui/statusbar/phone/NavStubView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startHomeAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$type:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$type:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get14(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/NavStubView$10$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$10$1;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView$10;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureShowFirstCardEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureShowFirstCardEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-wide/16 v0, 0x32

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ignore_bring_to_front"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "filter_flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
