.class public Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ChangeTaskLockStateEvent.java"


# instance fields
.field public isLocked:Z

.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;->isLocked:Z

    return-void
.end method
