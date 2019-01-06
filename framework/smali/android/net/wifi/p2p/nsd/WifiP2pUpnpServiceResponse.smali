.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pUpnpServiceResponse.java"


# instance fields
.field private mUniqueServiceNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method protected constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .registers 11

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->parse()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Malformed upnp service response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;
    .registers 7

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    return-object v1

    :cond_9
    :try_start_9
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v2
.end method

.method private parse()Z
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    if-nez v3, :cond_7

    return v6

    :cond_7
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    array-length v3, v3

    if-ge v3, v6, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mData:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    array-length v3, v1

    :goto_30
    if-ge v2, v3, :cond_3c

    aget-object v0, v1, v2

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3c
    return v6
.end method


# virtual methods
.method public getUniqueServiceNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "serviceType:UPnP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mServiceType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mStatus:I

    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, " srcAddr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    if-eqz v3, :cond_74

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->mUniqueServiceNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, " usn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5d

    :cond_74
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
