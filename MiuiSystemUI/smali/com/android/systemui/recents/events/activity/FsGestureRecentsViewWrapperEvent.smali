.class public Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureRecentsViewWrapperEvent.java"


# instance fields
.field public final mBackGround:Landroid/view/View;

.field public final mRecentsContainer:Landroid/view/ViewGroup;

.field public final mRecentsView:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mBackGround:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mRecentsContainer:Landroid/view/ViewGroup;

    return-void
.end method
