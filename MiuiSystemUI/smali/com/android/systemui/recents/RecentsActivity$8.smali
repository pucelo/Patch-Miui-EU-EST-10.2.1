.class Lcom/android/systemui/recents/RecentsActivity$8;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get5(Lcom/android/systemui/recents/RecentsActivity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/RecentsActivity;->-set2(Lcom/android/systemui/recents/RecentsActivity;I)I

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->setNotchPadding()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RotationChangedEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$8;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->-get5(Lcom/android/systemui/recents/RecentsActivity;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/activity/RotationChangedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
