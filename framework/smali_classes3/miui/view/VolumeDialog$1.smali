.class Lmiui/view/VolumeDialog$1;
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

    iput-object p1, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get10(Lmiui/view/VolumeDialog;)I

    move-result v2

    if-eq v2, v1, :cond_44

    iget-object v2, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get10(Lmiui/view/VolumeDialog;)I

    move-result v2

    if-eq v2, v3, :cond_3f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    iget-object v2, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3f
    iget-object v2, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2, v1}, Lmiui/view/VolumeDialog;->-set2(Lmiui/view/VolumeDialog;I)I

    :cond_44
    return-void
.end method
