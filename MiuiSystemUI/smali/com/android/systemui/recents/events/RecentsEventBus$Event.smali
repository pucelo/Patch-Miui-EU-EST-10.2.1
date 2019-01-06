.class public Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.super Ljava/lang/Object;
.source "RecentsEventBus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/RecentsEventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field cancelled:Z

.field requiresPost:Z

.field trace:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->trace:Z

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->cancelled:Z

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method onPostDispatch()V
    .locals 0

    return-void
.end method

.method onPreDispatch()V
    .locals 0

    return-void
.end method
