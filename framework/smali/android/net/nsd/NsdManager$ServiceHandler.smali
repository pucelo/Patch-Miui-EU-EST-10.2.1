.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v4, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    packed-switch v4, :pswitch_data_12c

    :pswitch_7
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get4(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_e
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get3(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get5(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_67

    monitor-exit v6

    if-nez v1, :cond_6a

    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Stale key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_45
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get1(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x11001

    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    return-void

    :pswitch_52
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get2(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_5c
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Channel lost"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_67
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_6a
    packed-switch v4, :pswitch_data_13a

    :pswitch_6d
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignored "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-void

    :pswitch_89
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v1, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    goto :goto_88

    :pswitch_97
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_88

    :pswitch_a8
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_88

    :pswitch_b2
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_88

    :pswitch_bc
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_88

    :pswitch_cd
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_88

    :pswitch_dc
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_88

    :pswitch_e9
    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_88

    :pswitch_f3
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_88

    :pswitch_100
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v6}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v1, v2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_88

    :pswitch_10e
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$ResolveListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_88

    :pswitch_11c
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    check-cast v1, Landroid/net/nsd/NsdManager$ResolveListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_88

    :pswitch_data_12c
    .packed-switch 0x11000
        :pswitch_45
        :pswitch_7
        :pswitch_52
        :pswitch_7
        :pswitch_5c
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x60002
        :pswitch_89
        :pswitch_97
        :pswitch_a8
        :pswitch_b2
        :pswitch_6d
        :pswitch_bc
        :pswitch_cd
        :pswitch_6d
        :pswitch_dc
        :pswitch_e9
        :pswitch_6d
        :pswitch_f3
        :pswitch_100
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_10e
        :pswitch_11c
    .end packed-switch
.end method
