.class public Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "DeleteTaskDataEvent.java"


# instance fields
.field public remainProcess:Z

.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    return-void
.end method
