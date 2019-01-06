.class Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->showCleanEndMsg(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

.field final synthetic val$clearButton:Lmiui/widget/CircleProgressBar;

.field final synthetic val$freeAtFirst:J

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;Lmiui/widget/CircleProgressBar;Landroid/view/WindowManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->this$1:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    iput-object p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$clearButton:Lmiui/widget/CircleProgressBar;

    iput-object p3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$wm:Landroid/view/WindowManager;

    iput-wide p4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$freeAtFirst:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$clearButton:Lmiui/widget/CircleProgressBar;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$clearButton:Lmiui/widget/CircleProgressBar;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$wm:Landroid/view/WindowManager;

    iget-wide v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->val$freeAtFirst:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;Lmiui/widget/CircleProgressBar;Landroid/view/WindowManager;J)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Lmiui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
