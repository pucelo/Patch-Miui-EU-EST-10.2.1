.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMiuiOptimizationChangedObserver()V
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

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    const/16 v5, 0xff

    const-string/jumbo v2, "persist.sys.miui_optimization"

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "ro.miui.cts"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    const-string/jumbo v2, "MiuiNetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "miui optimization mode changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", current network priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_58

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2, v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get12(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiNetworkManagementService;->enableIptablesRestore(Z)Z

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get12(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiNetworkManagementService;->enableIptablesRestore(Z)Z

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v2

    if-eqz v2, :cond_57

    if-eq v1, v5, :cond_57

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    goto :goto_57
.end method
