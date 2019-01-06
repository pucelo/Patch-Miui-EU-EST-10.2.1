.class public Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureShowStateEvent.java"


# instance fields
.field public isEnter:Z

.field public typeFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->isEnter:Z

    const-string/jumbo v0, "typefrom_demo"

    iput-object v0, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->typeFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->isEnter:Z

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->typeFrom:Ljava/lang/String;

    return-void
.end method
