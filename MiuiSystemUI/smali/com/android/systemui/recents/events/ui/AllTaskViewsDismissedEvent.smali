.class public Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "AllTaskViewsDismissedEvent.java"


# instance fields
.field public final mEmpty:Z

.field public final mFromDockGesture:Z

.field public final msgResId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mEmpty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mFromDockGesture:Z

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mEmpty:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mFromDockGesture:Z

    return-void
.end method
