.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startResetAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setIsScollAnimating(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setIsScollAnimating(Z)V

    :cond_0
    return-void
.end method
