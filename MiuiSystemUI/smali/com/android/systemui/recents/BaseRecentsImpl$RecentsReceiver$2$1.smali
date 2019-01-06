.class Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;

.field final synthetic val$clearButton:Lmiui/widget/CircleProgressBar;

.field final synthetic val$freeAtFirst:J

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;Lmiui/widget/CircleProgressBar;Landroid/view/WindowManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->this$2:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;

    iput-object p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$clearButton:Lmiui/widget/CircleProgressBar;

    iput-object p3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$wm:Landroid/view/WindowManager;

    iput-wide p4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$freeAtFirst:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    const-wide/16 v4, 0x400

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    int-to-long v6, v0

    const-string/jumbo v0, "RecentsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "freeMemoryAtLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$clearButton:Lmiui/widget/CircleProgressBar;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    div-long/2addr v0, v4

    sub-long/2addr v0, v6

    long-to-int v9, v0

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$clearButton:Lmiui/widget/CircleProgressBar;

    iget-wide v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;->val$freeAtFirst:J

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2$1;Landroid/view/WindowManager;Lmiui/widget/CircleProgressBar;JJ)V

    invoke-virtual {v8, v9, v0}, Lmiui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
