.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPECIFIER_TYPE_IB:I = 0x0

.field public static final NETWORK_SPECIFIER_TYPE_IB_ANY_PEER:I = 0x1

.field public static final NETWORK_SPECIFIER_TYPE_MAX_VALID:I = 0x3

.field public static final NETWORK_SPECIFIER_TYPE_OOB:I = 0x2

.field public static final NETWORK_SPECIFIER_TYPE_OOB_ANY_PEER:I = 0x3


# instance fields
.field public final clientId:I

.field public final passphrase:Ljava/lang/String;

.field public final peerId:I

.field public final peerMac:[B

.field public final pmk:[B

.field public final requestorUid:I

.field public final role:I

.field public final sessionId:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII[B[BLjava/lang/String;I)V
    .registers 10

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    return-void
.end method


# virtual methods
.method public assertValidFromUid(I)V
    .registers 4

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "mismatched UIDs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    instance-of v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez v3, :cond_a

    return v2

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    iget v4, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-ne v3, v4, :cond_50

    :goto_4f
    return v1

    :cond_50
    move v1, v2

    goto :goto_4f

    :cond_52
    move v1, v2

    goto :goto_4f
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    add-int v0, v1, v2

    return v0
.end method

.method public isOutOfBand()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3

    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-virtual {p1, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WifiAwareNetworkSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", peerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", peerMac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    if-nez v1, :cond_97

    const-string/jumbo v1, "<null>"

    :goto_57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pmk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-nez v1, :cond_9b

    const-string/jumbo v1, "<null>"

    :goto_69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", passphrase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_9f

    const-string/jumbo v1, "<null>"

    :goto_7b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestorUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_97
    const-string/jumbo v1, "<non-null>"

    goto :goto_57

    :cond_9b
    const-string/jumbo v1, "<non-null>"

    goto :goto_69

    :cond_9f
    const-string/jumbo v1, "<non-null>"

    goto :goto_7b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
