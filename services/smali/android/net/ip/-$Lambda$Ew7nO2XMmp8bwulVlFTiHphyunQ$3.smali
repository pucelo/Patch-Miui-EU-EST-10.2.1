.class final synthetic Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_19284(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/IpPrefix;

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_19537(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_16901(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_17204(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->-android_net_ip_IpManager$InitialConfiguration-mthref-4(Ljava/lang/Class;Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$5(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->lambda$-android_net_ip_IpManager_68288(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$id:B

    iput-object p2, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$id:B

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1f
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$4(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_24
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$5(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method
