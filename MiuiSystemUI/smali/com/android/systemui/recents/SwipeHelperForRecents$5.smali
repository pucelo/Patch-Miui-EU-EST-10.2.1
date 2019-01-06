.class Lcom/android/systemui/recents/SwipeHelperForRecents$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/SwipeHelperForRecents;->snapChild(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$targetLeft:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;ZF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$canBeDismissed:Z

    iput p4, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$targetLeft:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-set2(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-wrap0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get0(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$animView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->val$targetLeft:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onChildSnappedBack(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$5;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-set0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
