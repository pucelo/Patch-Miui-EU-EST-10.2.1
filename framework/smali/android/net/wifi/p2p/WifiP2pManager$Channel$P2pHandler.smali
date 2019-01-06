.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v4

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_a4

    const-string/jumbo v8, "WifiP2pManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Ignored "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void

    :sswitch_29
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v8

    if-eqz v8, :cond_28

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v8, v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_28

    :sswitch_40
    if-eqz v4, :cond_28

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v8}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_28

    :sswitch_4a
    if-eqz v4, :cond_28

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v4}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_28

    :sswitch_52
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v4, :cond_28

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_28

    :sswitch_5e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz v4, :cond_28

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_28

    :sswitch_6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v4, :cond_28

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v4, v0}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_28

    :sswitch_76
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v8, v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_28

    :sswitch_80
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    if-eqz v4, :cond_28

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    invoke-interface {v4, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_28

    :sswitch_8c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v4, :cond_28

    if-eqz v2, :cond_a1

    const-string/jumbo v8, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9b
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    invoke-interface {v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto :goto_28

    :cond_a1
    const/4 v3, 0x0

    goto :goto_9b

    nop

    :sswitch_data_a4
    .sparse-switch
        0x11004 -> :sswitch_29
        0x22002 -> :sswitch_40
        0x22003 -> :sswitch_4a
        0x22005 -> :sswitch_40
        0x22006 -> :sswitch_4a
        0x22008 -> :sswitch_40
        0x22009 -> :sswitch_4a
        0x2200b -> :sswitch_40
        0x2200c -> :sswitch_4a
        0x2200e -> :sswitch_40
        0x2200f -> :sswitch_4a
        0x22011 -> :sswitch_40
        0x22012 -> :sswitch_4a
        0x22014 -> :sswitch_52
        0x22016 -> :sswitch_5e
        0x22018 -> :sswitch_6a
        0x2201d -> :sswitch_40
        0x2201e -> :sswitch_4a
        0x22020 -> :sswitch_40
        0x22021 -> :sswitch_4a
        0x22023 -> :sswitch_40
        0x22024 -> :sswitch_4a
        0x22026 -> :sswitch_40
        0x22027 -> :sswitch_4a
        0x22029 -> :sswitch_40
        0x2202a -> :sswitch_4a
        0x2202c -> :sswitch_40
        0x2202d -> :sswitch_4a
        0x2202f -> :sswitch_40
        0x22030 -> :sswitch_4a
        0x22032 -> :sswitch_76
        0x22034 -> :sswitch_40
        0x22035 -> :sswitch_4a
        0x22037 -> :sswitch_40
        0x22038 -> :sswitch_4a
        0x2203a -> :sswitch_80
        0x2203c -> :sswitch_40
        0x2203d -> :sswitch_4a
        0x2203f -> :sswitch_40
        0x22040 -> :sswitch_4a
        0x22042 -> :sswitch_40
        0x22043 -> :sswitch_4a
        0x22045 -> :sswitch_40
        0x22046 -> :sswitch_4a
        0x22048 -> :sswitch_40
        0x22049 -> :sswitch_4a
        0x2204d -> :sswitch_8c
        0x22050 -> :sswitch_4a
        0x22051 -> :sswitch_40
    .end sparse-switch
.end method
