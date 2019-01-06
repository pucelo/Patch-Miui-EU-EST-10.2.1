.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;
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

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    :goto_17
    invoke-static {v4, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set7(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)Z

    const-string/jumbo v3, "MiuiNetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wasConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mNetworkPriorityMode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    if-eq v3, v2, :cond_a4

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get15(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->updateIface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_81
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)Z

    move-result v3

    if-eqz v3, :cond_a4

    :cond_97
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_a8

    :goto_a1
    invoke-static {v3, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    :cond_a4
    return-void

    :cond_a5
    const/4 v3, 0x0

    goto/16 :goto_17

    :cond_a8
    const/16 v1, 0xff

    goto :goto_a1
.end method
