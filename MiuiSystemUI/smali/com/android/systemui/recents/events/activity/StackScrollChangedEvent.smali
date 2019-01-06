.class public Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "StackScrollChangedEvent.java"


# instance fields
.field public mTranslationY:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    return-void
.end method
