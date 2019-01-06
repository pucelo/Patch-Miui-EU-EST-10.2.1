.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$screenPinningRequested:Z

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean p4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$screenPinningRequested:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$screenPinningRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;I)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
