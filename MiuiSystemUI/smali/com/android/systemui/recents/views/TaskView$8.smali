.class Lcom/android/systemui/recents/views/TaskView$8;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$8;->this$0:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method
