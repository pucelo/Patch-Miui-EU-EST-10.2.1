.class Lcom/android/systemui/recents/views/TaskStackViewScroller$2;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewScroller;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ScrollerFlingFinishEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ScrollerFlingFinishEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method
