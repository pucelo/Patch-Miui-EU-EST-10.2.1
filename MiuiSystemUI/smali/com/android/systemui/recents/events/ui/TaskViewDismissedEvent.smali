.class public Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "TaskViewDismissedEvent.java"


# instance fields
.field public final animation:Lcom/android/systemui/recents/views/AnimationProps;

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    return-void
.end method
