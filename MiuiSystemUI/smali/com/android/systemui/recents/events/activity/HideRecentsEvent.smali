.class public Lcom/android/systemui/recents/events/activity/HideRecentsEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "HideRecentsEvent.java"


# instance fields
.field public final triggeredFromAltTab:Z

.field public final triggeredFromFsGesture:Z

.field public final triggeredFromHomeKey:Z

.field public final triggeredFromScroll:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromFsGesture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromFsGesture:Z

    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    return-void
.end method
