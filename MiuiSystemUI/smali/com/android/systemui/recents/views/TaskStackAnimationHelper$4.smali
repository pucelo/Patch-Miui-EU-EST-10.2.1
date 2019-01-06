.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$dismissSize:F

.field final synthetic val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    iput p3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$dismissSize:F

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$dismissSize:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateSwipeProgress(Landroid/view/View;ZF)Z

    return-void
.end method
