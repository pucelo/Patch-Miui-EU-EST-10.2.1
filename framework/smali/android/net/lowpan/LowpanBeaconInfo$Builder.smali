.class public Landroid/net/lowpan/LowpanBeaconInfo$Builder;
.super Ljava/lang/Object;
.source "LowpanBeaconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanBeaconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field final mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$Builder;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>(Landroid/net/lowpan/LowpanBeaconInfo;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanBeaconInfo;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->build()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->-set1(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->-get0(Landroid/net/lowpan/LowpanBeaconInfo;)[B

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->-set0(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B

    :cond_1b
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method public setBeaconAddress([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_b
    invoke-static {v1, v0}, Landroid/net/lowpan/LowpanBeaconInfo;->-set0(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B

    return-object p0
.end method

.method public setChannel(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setFlag(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->-get1(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setFlags(Ljava/util/Collection;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/lowpan/LowpanBeaconInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->-get1(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setLqi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->-set2(Landroid/net/lowpan/LowpanBeaconInfo;I)I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setPanid(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setRssi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->-set3(Landroid/net/lowpan/LowpanBeaconInfo;I)I

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method

.method public setXpanid([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    return-object p0
.end method
