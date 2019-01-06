.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Lcom/android/server/MiuiNetworkManagementService$NetworkEventObserver;


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

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidDataActivityChanged(Ljava/lang/String;IZJ)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p3, :cond_18

    const/4 v0, 0x1

    :goto_f
    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method
