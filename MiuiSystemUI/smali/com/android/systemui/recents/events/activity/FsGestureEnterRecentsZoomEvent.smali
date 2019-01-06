.class public Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureEnterRecentsZoomEvent.java"


# instance fields
.field public final mTimeOffset:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;->mTimeOffset:J

    return-void
.end method
