.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method
