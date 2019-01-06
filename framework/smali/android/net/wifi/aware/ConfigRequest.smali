.class public final Landroid/net/wifi/aware/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/ConfigRequest$1;,
        Landroid/net/wifi/aware/ConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLUSTER_ID_MAX:I = 0xffff

.field public static final CLUSTER_ID_MIN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DW_DISABLE:I = 0x0

.field public static final DW_INTERVAL_NOT_INIT:I = -0x1

.field public static final NAN_BAND_24GHZ:I = 0x0

.field public static final NAN_BAND_5GHZ:I = 0x1


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mDiscoveryWindowInterval:[I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/aware/ConfigRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/ConfigRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZIII[I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    iput p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    iput p3, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iput p4, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    iput-object p5, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    return-void
.end method

.method synthetic constructor <init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    instance-of v2, p1, Landroid/net/wifi/aware/ConfigRequest;

    if-nez v2, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/ConfigRequest;

    iget-boolean v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    iget-boolean v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    iget v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    iget v3, v0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-ne v2, v3, :cond_2d

    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    iget-object v2, v0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    :cond_2d
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    :goto_7
    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    return v0

    :cond_26
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfigRequest [mSupport5gBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMasterPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClusterLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClusterHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDiscoveryWindowInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v1, 0xff

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-gez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master Preference specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-eq v0, v3, :cond_1b

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ne v0, v1, :cond_24

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-gt v0, v1, :cond_1b

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-gez v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    const v1, 0xffff

    if-le v0, v1, :cond_45

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-gez v0, :cond_52

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    const v1, 0xffff

    if-le v0, v1, :cond_62

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-le v0, v1, :cond_71

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_80

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid discovery window interval: must have 2 elements (2.4 & 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-eq v0, v4, :cond_9b

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-lt v0, v3, :cond_92

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v2

    if-le v0, v5, :cond_9b

    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid discovery window interval for 2.4GHz: valid is UNSET or [1,5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_b6

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v3

    if-ltz v0, :cond_ad

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v0, v0, v3

    if-le v0, v5, :cond_b6

    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid discovery window interval for 5GHz: valid is UNSET or [0,5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_5
.end method
