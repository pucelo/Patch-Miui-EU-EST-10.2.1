.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap1(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap2(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set3(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get22(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2a
.end method

.method public exit()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set3(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    :cond_17
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    const/4 v0, 0x0

    return v0

    :pswitch_a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get22(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x30002
        :pswitch_a
    .end packed-switch
.end method
