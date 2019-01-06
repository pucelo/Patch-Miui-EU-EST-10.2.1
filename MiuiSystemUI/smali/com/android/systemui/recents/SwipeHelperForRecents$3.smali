.class Lcom/android/systemui/recents/SwipeHelperForRecents$3;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->val$canBeDismissed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->val$animView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iget-object v4, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->val$animView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$3;->val$canBeDismissed:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onTranslationUpdate(Landroid/view/View;FZ)V

    return-void
.end method
