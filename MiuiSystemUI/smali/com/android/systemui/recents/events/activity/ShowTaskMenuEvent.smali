.class public Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ShowTaskMenuEvent.java"


# instance fields
.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method
