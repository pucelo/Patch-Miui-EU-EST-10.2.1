.class Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;
.super Landroid/content/BroadcastReceiver;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;)V
    .registers 2

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->-set0(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;Z)Z

    :cond_13
    :goto_13
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    invoke-virtual {v1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    return-void

    :cond_19
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState$1;->this$1:Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->-set0(Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;Z)Z

    goto :goto_13
.end method
