.class Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;
.super Landroid/app/IUidObserver$Stub;
.source "MiuiNetworkPolicyServiceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->-get0(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->-get0(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->-get0(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;->this$0:Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;

    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->-get0(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
