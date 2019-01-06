.class Lcom/android/systemui/recents/SwipeHelperForRecents$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-wrap0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get3(Lcom/android/systemui/recents/SwipeHelperForRecents;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get0(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onChildDismissed(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get2(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method
