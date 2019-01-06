.class final synthetic Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->-$f0:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_18606(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/net/INetworkManagementEventObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->-$f0:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_18299(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(BZLjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->$id:B

    iput-boolean p2, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->-$f0:Z

    iput-object p3, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->$m$0(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;->$m$1(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
