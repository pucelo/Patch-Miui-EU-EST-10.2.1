.class public Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureLaunchTargetTaskViewRectEvent.java"


# instance fields
.field public final mLaunchTargetTask:Lcom/android/systemui/recents/model/Task;

.field public final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;->mRectF:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;->mLaunchTargetTask:Lcom/android/systemui/recents/model/Task;

    return-void
.end method
