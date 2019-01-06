.class Lcom/android/systemui/recents/RecentsActivity$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->doClearAnim()V
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

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get0(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get0(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get0(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$18$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$18$1;-><init>(Lcom/android/systemui/recents/RecentsActivity$18;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->-set0(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-wrap2(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method
