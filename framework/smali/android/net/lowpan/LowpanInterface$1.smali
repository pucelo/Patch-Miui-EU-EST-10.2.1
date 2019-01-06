.class Landroid/net/lowpan/LowpanInterface$1;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanInterface;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V
    .registers 6

    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    invoke-static {v0}, Landroid/net/lowpan/LowpanInterface;->-get1(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    invoke-static {v1}, Landroid/net/lowpan/LowpanInterface;->-get1(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_11

    :cond_28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_11
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_18511(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_18705(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onConnectedChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_18894(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onUpChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19077(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onRoleChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19263(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19467(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19669(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19868(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_20493(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressAdded(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_21249(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressRemoved(Landroid/net/LinkAddress;)V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnabledChanged(Z)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p1, v2}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_13

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4, v0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_13
    move-exception v1

    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLinkAddressAdded: Bad LinkAddress \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_13

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, v0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_13
    move-exception v1

    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLinkAddressRemoved: Bad LinkAddress \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .registers 2

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpChanged(Z)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p1, v2}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
