.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_54

    return v2

    :sswitch_e
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_62

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "Invalid tethering interface serving state specified."

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_24
    const/4 v0, 0x1

    return v0

    :pswitch_26
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_24

    :pswitch_32
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_24

    :sswitch_3e
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_24

    :sswitch_4a
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    goto :goto_24

    :sswitch_data_54
    .sparse-switch
        0x50066 -> :sswitch_e
        0x50068 -> :sswitch_3e
        0x50071 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method
