.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$PacketKeepalive;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8e

    const-string/jumbo v2, "PacketKeepalive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void

    :pswitch_26
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_7f

    :try_start_2a
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get2(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6a

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/ConnectivityManager$PacketKeepalive;->-set0(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_46} :catch_47

    goto :goto_25

    :catch_47
    move-exception v0

    const-string/jumbo v2, "PacketKeepalive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in keepalive callback("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :cond_6a
    :try_start_6a
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/ConnectivityManager$PacketKeepalive;->-set0(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    goto :goto_25

    :cond_7f
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->-get0(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8d} :catch_47

    goto :goto_25

    :pswitch_data_8e
    .packed-switch 0x8100d
        :pswitch_26
    .end packed-switch
.end method
