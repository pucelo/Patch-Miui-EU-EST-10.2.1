.class Lcom/android/systemui/statusbar/NetworkSpeedView$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/16 v2, 0x64

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    const-string/jumbo v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-set0(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap1(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap1(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    goto :goto_0
.end method
