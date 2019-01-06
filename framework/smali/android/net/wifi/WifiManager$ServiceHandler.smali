.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private dispatchMessageToListeners(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->-wrap0(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_d4

    :cond_f
    :goto_f
    :sswitch_f
    return-void

    :sswitch_10
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2a

    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get1(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :goto_20
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get2(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_f

    :cond_2a
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->-set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_20

    :sswitch_39
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->-set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_f

    :sswitch_4f
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_f

    :sswitch_59
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_f

    :sswitch_61
    if-eqz v1, :cond_f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsResult;

    move-object v3, v1

    check-cast v3, Landroid/net/wifi/WifiManager$WpsCallback;

    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get4(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_76
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get3(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_83

    monitor-exit v4

    goto :goto_f

    :catchall_83
    move-exception v3

    monitor-exit v4

    throw v3

    :sswitch_86
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto :goto_f

    :sswitch_8e
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto/16 :goto_f

    :sswitch_99
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    goto/16 :goto_f

    :sswitch_a2
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    goto/16 :goto_f

    :sswitch_ad
    if-eqz v1, :cond_f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    if-eqz v0, :cond_c1

    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_f

    :cond_c1
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    invoke-interface {v1, v6}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_f

    :sswitch_c8
    if-eqz v1, :cond_f

    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_f

    nop

    :sswitch_data_d4
    .sparse-switch
        0x11000 -> :sswitch_10
        0x11002 -> :sswitch_f
        0x11004 -> :sswitch_39
        0x25002 -> :sswitch_4f
        0x25003 -> :sswitch_59
        0x25005 -> :sswitch_4f
        0x25006 -> :sswitch_59
        0x25008 -> :sswitch_4f
        0x25009 -> :sswitch_59
        0x2500b -> :sswitch_61
        0x2500c -> :sswitch_8e
        0x2500d -> :sswitch_86
        0x2500f -> :sswitch_a2
        0x25010 -> :sswitch_99
        0x25012 -> :sswitch_4f
        0x25013 -> :sswitch_59
        0x25015 -> :sswitch_ad
        0x25016 -> :sswitch_c8
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-static {}, Landroid/net/wifi/WifiManager;->-get5()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ServiceHandler;->dispatchMessageToListeners(Landroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method
