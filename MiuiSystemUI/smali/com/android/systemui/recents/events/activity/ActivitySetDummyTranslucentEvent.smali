.class public Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ActivitySetDummyTranslucentEvent.java"


# instance fields
.field public final mIsTranslucent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;->mIsTranslucent:Z

    return-void
.end method
