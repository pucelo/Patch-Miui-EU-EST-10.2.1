.class public Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager$ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 3

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object p0
.end method

.method public withIPv6AddrGenModeEUI64()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    return-object p0
.end method

.method public withIPv6AddrGenModeStablePrivacy()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/ip/IpManager$InitialConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const v1, 0x8ca0

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    return-object p0
.end method

.method public withoutIPv4()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    return-object p0
.end method

.method public withoutIPv6()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    return-object p0
.end method
