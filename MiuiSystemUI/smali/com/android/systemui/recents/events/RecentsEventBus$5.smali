.class Lcom/android/systemui/recents/events/RecentsEventBus$5;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/RecentsEventBus;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/events/RecentsEventBus$5;->this$0:Lcom/android/systemui/recents/events/RecentsEventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/RecentsEventBus$5;->val$event:Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus$5;->val$event:Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->onPostDispatch()V

    return-void
.end method
