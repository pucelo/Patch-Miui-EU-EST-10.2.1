.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseServingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_34

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    const-string/jumbo v2, "Failed to startIPv6"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :catch_34
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    return-void

    :cond_59
    return-void
.end method

.method public exit()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    :try_start_5
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_1f

    :goto_14
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void

    :catch_1f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    :pswitch_c
    const/4 v0, 0x0

    return v0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_19
    const/4 v0, 0x1

    return v0

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_19

    :pswitch_27
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    goto :goto_19

    :pswitch_36
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_19

    :pswitch_data_48
    .packed-switch 0x50067
        :pswitch_e
        :pswitch_1b
        :pswitch_c
        :pswitch_c
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_c
        :pswitch_27
    .end packed-switch
.end method
