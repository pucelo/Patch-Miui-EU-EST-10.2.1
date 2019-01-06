.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/RttManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RTT manager get message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_be

    :pswitch_22
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_60

    const-string/jumbo v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_49
    return-void

    :pswitch_4a
    const-string/jumbo v2, "RttManager"

    const-string/jumbo v3, "Channel connection lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    invoke-static {v2, v5}, Landroid/net/wifi/RttManager;->-set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/RttManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    return-void

    :cond_60
    const-string/jumbo v2, "RttManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_c8

    :pswitch_81
    return-void

    :pswitch_82
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    :goto_8c
    return-void

    :pswitch_8d
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_8c

    :pswitch_98
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    invoke-interface {v1}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_8c

    :pswitch_a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ResponderConfig;

    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    invoke-virtual {v1, v0}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnabled(Landroid/net/wifi/RttManager$ResponderConfig;)V

    goto :goto_8c

    :pswitch_af
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnableFailure(I)V

    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    goto :goto_8c

    :pswitch_data_be
    .packed-switch 0x11002
        :pswitch_49
        :pswitch_22
        :pswitch_4a
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x27202
        :pswitch_8d
        :pswitch_82
        :pswitch_98
        :pswitch_81
        :pswitch_81
        :pswitch_a5
        :pswitch_af
    .end packed-switch
.end method

.method reportFailure(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 7

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    iget v2, p2, Landroid/os/Message;->arg1:I

    const-string/jumbo v3, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 6

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    iget-object v2, v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    invoke-interface {p1, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    return-void
.end method
