.class Lmiui/app/ToggleManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_1f
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p2}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get0(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap8(Lmiui/app/ToggleManager;)V

    goto :goto_24

    :cond_41
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    goto :goto_24

    :cond_55
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap11(Lmiui/app/ToggleManager;)V

    goto :goto_24

    :cond_64
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lmiui/app/ToggleManager;->-set0(Lmiui/app/ToggleManager;Z)Z

    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap2(Lmiui/app/ToggleManager;)V

    goto :goto_24
.end method
