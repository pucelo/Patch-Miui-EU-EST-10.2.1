.class public Lcom/android/systemui/recents/events/activity/RotationChangedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "RotationChangedEvent.java"


# instance fields
.field public final rotation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/RotationChangedEvent;->rotation:I

    return-void
.end method
