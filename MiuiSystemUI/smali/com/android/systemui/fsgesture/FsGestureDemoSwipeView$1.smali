.class Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FsGestureDemoSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createFinalAnimSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput p2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->val$status:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->val$status:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->-get0(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->-get1(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
