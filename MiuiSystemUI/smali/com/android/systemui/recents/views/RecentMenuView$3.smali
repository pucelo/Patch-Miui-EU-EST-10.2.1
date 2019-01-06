.class Lcom/android/systemui/recents/views/RecentMenuView$3;
.super Ljava/lang/Object;
.source "RecentMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentMenuView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentMenuView;

.field final synthetic val$dockStates:[Lcom/android/systemui/recents/model/TaskStack$DockState;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentMenuView;[Lcom/android/systemui/recents/model/TaskStack$DockState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->val$dockStates:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentMenuView;->-get4(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->-get4(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->val$dockStates:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    aget-object v3, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->-get4(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->val$dockStates:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    aget-object v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentMenuView;->-get1(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentMenuView;->-get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView$3;->this$0:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentMenuView;->-get1(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
