.class Lmiui/view/VolumeDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-wide/16 v8, 0x1f4

    const/16 v5, 0xb

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_1b
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog;->dismiss()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const-string/jumbo v3, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const-string/jumbo v3, "IsFinished"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3, v4}, Lmiui/view/VolumeDialog;->-set0(Lmiui/view/VolumeDialog;Z)Z

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    invoke-virtual {v3, v5, v8, v9}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get5(Lmiui/view/VolumeDialog;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-gez v3, :cond_20

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog;->dismiss()V

    goto :goto_20

    :cond_56
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/view/VolumeDialog;->-set0(Lmiui/view/VolumeDialog;Z)Z

    goto :goto_20

    :cond_66
    const-string/jumbo v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3, v2}, Lmiui/view/VolumeDialog;->-wrap7(Lmiui/view/VolumeDialog;I)V

    goto :goto_20
.end method
