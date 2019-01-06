.class public Lcom/android/systemui/recents/events/activity/ClickTaskViewToLaunchTaskEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ClickTaskViewToLaunchTaskEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/ClickTaskViewToLaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    return-void
.end method
