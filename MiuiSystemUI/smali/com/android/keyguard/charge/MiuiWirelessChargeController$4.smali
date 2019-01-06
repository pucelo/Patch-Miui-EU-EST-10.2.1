.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWirelessChargeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "level"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "health"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIII)V

    iget-object v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v5, v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    :cond_0
    return-void
.end method
