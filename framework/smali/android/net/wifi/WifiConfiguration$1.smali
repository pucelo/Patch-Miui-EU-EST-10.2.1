.class final Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .registers 11

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration;->-get0(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5e

    move v3, v4

    :goto_46
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v3, v2, [J

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    const/4 v1, 0x0

    :goto_51
    if-ge v1, v2, :cond_60

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    aput-wide v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_5e
    move v3, v5

    goto :goto_46

    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v1, 0x0

    :goto_7f
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_8f

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_8f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c5

    move v3, v4

    :goto_a2
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c8

    move v3, v4

    :goto_ab
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->-wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1cb

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    :cond_e7
    :goto_e7
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/IpConfiguration;

    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfiguration;->-set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e3

    move v3, v4

    :goto_10b
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e6

    move v3, v4

    :goto_114
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e9

    move v3, v4

    :goto_11d
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1ec

    move v3, v4

    :goto_126
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1ef

    move v3, v4

    :goto_12f
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f2

    move v3, v4

    :goto_138
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f5

    move v3, v4

    :goto_147
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f8

    move v3, v4

    :goto_1a4
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1fa

    :goto_1ac
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/wifi/WifiConfiguration;->-set1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    return-object v0

    :cond_1c5
    move v3, v5

    goto/16 :goto_a2

    :cond_1c8
    move v3, v5

    goto/16 :goto_ab

    :cond_1cb
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    goto/16 :goto_e7

    :cond_1e3
    move v3, v5

    goto/16 :goto_10b

    :cond_1e6
    move v3, v5

    goto/16 :goto_114

    :cond_1e9
    move v3, v5

    goto/16 :goto_11d

    :cond_1ec
    move v3, v5

    goto/16 :goto_126

    :cond_1ef
    move v3, v5

    goto/16 :goto_12f

    :cond_1f2
    move v3, v5

    goto/16 :goto_138

    :cond_1f5
    move v3, v5

    goto/16 :goto_147

    :cond_1f8
    move v3, v5

    goto :goto_1a4

    :cond_1fa
    move v4, v5

    goto :goto_1ac
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method
