.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerNetworkProrityModeChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    if-eqz p2, :cond_14

    const-string/jumbo v1, "cloud_network_priority_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    :cond_14
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v0

    const-string/jumbo v1, "MiuiNetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkPriorityMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mNetworkPriorityMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mWifiConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v1, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    :cond_6b
    return-void
.end method
