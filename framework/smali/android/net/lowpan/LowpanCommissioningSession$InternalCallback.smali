.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_net_lowpan_LowpanCommissioningSession$InternalCallback_2366([B)V
    .registers 4

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get2(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get0(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get0(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onConnectedChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .registers 5

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get1(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get2(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "offline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_11
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-wrap0(Landroid/net/lowpan/LowpanCommissioningSession;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_25

    monitor-exit v1

    :cond_1a
    return-void

    :cond_1b
    const-string/jumbo v0, "fault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUpChanged(Z)V
    .registers 2

    return-void
.end method
