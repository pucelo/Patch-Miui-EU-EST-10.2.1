.class Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRapidCommitInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;)V

    :cond_e
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/net/dhcp/DhcpClient;->-set1(Landroid/net/dhcp/DhcpClient;J)J

    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    instance-of v1, p1, Landroid/net/dhcp/DhcpOfferPacket;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get14(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DhcpRapidCommitInitState:Got pending lease: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->-get14(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get9(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    instance-of v1, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v1, :cond_77

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Received ACK in DhcpRapidCommitInitState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4a

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v2, "Confirmed"

    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_4a

    :cond_77
    instance-of v1, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Received NAK in DhcpRapidCommitInitState, returning to INIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1, v3}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_4a
.end method

.method protected sendPacket()Z
    .registers 3

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    const/4 v0, 0x1

    return v0

    :cond_d
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap4(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    return v0
.end method
