.class Lcom/android/systemui/recents/events/RecentsEventBus$4;
.super Ljava/lang/Object;
.source "RecentsEventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/events/RecentsEventBus;->queueEvent(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/events/RecentsEventBus;

.field final synthetic val$event:Lcom/android/systemui/recents/events/RecentsEventBus$Event;

.field final synthetic val$eventHandler:Lcom/android/systemui/recents/events/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/RecentsEventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/events/RecentsEventBus$4;->this$0:Lcom/android/systemui/recents/events/RecentsEventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/RecentsEventBus$4;->val$eventHandler:Lcom/android/systemui/recents/events/EventHandler;

    iput-object p3, p0, Lcom/android/systemui/recents/events/RecentsEventBus$4;->val$event:Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus$4;->this$0:Lcom/android/systemui/recents/events/RecentsEventBus;

    iget-object v1, p0, Lcom/android/systemui/recents/events/RecentsEventBus$4;->val$eventHandler:Lcom/android/systemui/recents/events/EventHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/events/RecentsEventBus$4;->val$event:Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->-wrap0(Lcom/android/systemui/recents/events/RecentsEventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method
