.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string/jumbo v2, "apnType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    const-class v2, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    if-ne v2, v1, :cond_29

    return-void

    :cond_29
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v2, :cond_45

    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get7()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    :goto_39
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_44
    return-void

    :cond_45
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v2, :cond_44

    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get7()I

    move-result v2

    if-nez v2, :cond_44

    goto :goto_39
.end method
