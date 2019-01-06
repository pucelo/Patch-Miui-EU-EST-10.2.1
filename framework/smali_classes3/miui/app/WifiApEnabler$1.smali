.class Lmiui/app/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/WifiApEnabler;


# direct methods
.method constructor <init>(Lmiui/app/WifiApEnabler;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->-wrap0(Lmiui/app/WifiApEnabler;I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-static {v1}, Lmiui/app/WifiApEnabler;->-wrap2(Lmiui/app/WifiApEnabler;)V

    goto :goto_1b

    :cond_2b
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-static {v1}, Lmiui/app/WifiApEnabler;->-get0(Lmiui/app/WifiApEnabler;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->-wrap1(Lmiui/app/WifiApEnabler;I)V

    goto :goto_1b
.end method
