.class Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;

.field final synthetic val$clearButton:Lmiui/widget/CircleProgressBar;

.field final synthetic val$freeAtFirst:J

.field final synthetic val$freeAtLast:J

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;Landroid/view/WindowManager;Lmiui/widget/CircleProgressBar;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->this$3:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;

    iput-object p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$clearButton:Lmiui/widget/CircleProgressBar;

    iput-wide p4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$freeAtFirst:J

    iput-wide p6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$freeAtLast:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$clearButton:Lmiui/widget/CircleProgressBar;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->this$3:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->this$2:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->this$1:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$freeAtFirst:J

    iget-wide v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->val$freeAtLast:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/systemui/recents/RecentsActivity;->getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;->this$3:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->this$2:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->this$1:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x7d6

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
