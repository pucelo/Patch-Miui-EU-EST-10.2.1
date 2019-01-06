.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_118

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v7}, Lcom/android/server/ConnectivityService;->-wrap19(Lcom/android/server/ConnectivityService;I)V

    goto :goto_5

    :sswitch_e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;)V

    goto :goto_5

    :sswitch_14
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/ProxyInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_5

    :sswitch_1e
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_5

    :sswitch_28
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Messenger;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap24(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto :goto_5

    :sswitch_32
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_5

    :sswitch_3c
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_5

    :sswitch_46
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, p1}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_5

    :sswitch_4c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v3}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_5

    :sswitch_56
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/PendingIntent;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v6, v8}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto :goto_5

    :sswitch_62
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkRequest;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v6, v8}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto :goto_5

    :sswitch_6e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v8

    invoke-static {v6, v2, v7, v8}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto :goto_5

    :sswitch_84
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_5

    :sswitch_8f
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_5

    :sswitch_9a
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_5

    :sswitch_a1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_5

    :sswitch_ac
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v6

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_5

    :sswitch_c5
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_d3

    :sswitch_e5
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v9

    invoke-static {v7, v6, v8, v9}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    goto/16 :goto_5

    :sswitch_f8
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_106
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v0}, Lcom/android/server/ConnectivityService;->-wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_106

    :sswitch_data_118
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_e
        0x10 -> :sswitch_14
        0x11 -> :sswitch_1e
        0x12 -> :sswitch_32
        0x13 -> :sswitch_3c
        0x14 -> :sswitch_4c
        0x15 -> :sswitch_3c
        0x16 -> :sswitch_62
        0x17 -> :sswitch_28
        0x18 -> :sswitch_6
        0x19 -> :sswitch_c5
        0x1a -> :sswitch_46
        0x1b -> :sswitch_56
        0x1c -> :sswitch_6e
        0x1d -> :sswitch_8f
        0x1e -> :sswitch_9a
        0x1f -> :sswitch_46
        0x23 -> :sswitch_84
        0x24 -> :sswitch_e5
        0x80 -> :sswitch_f8
        0x8100b -> :sswitch_a1
        0x8100c -> :sswitch_ac
    .end sparse-switch
.end method
