.class Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field private final mCallbackType:I

.field final synthetic this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap0(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap3(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap1(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap6(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap2(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap6(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap4(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->-wrap5(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    return-void
.end method
