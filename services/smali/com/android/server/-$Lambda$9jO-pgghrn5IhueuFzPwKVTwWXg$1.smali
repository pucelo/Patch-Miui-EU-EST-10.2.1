.class final synthetic Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkAddress;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_30616(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkAddress;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_30388(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$2(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_19402(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$id:B

    iput-object p2, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$m$0(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$m$1(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$m$2(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
