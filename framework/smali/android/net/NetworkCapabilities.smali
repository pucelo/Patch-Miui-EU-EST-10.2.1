.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPABILITIES:J = 0xe000L

.field private static final MAX_NET_CAPABILITY:I = 0x12

.field public static final MAX_TRANSPORT:I = 0x6

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field public static final MIN_TRANSPORT:I = 0x0

.field private static final MUTABLE_CAPABILITIES:J = 0x74000L

.field public static final NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOREGROUND:I = 0x12

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_VALIDATED:I = 0x10

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final NON_REQUESTABLE_CAPABILITIES:J = 0x70000L

.field static final RESTRICTED_CAPABILITIES:J = 0x7bcL

.field public static final SIGNAL_STRENGTH_UNSPECIFIED:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "NetworkCapabilities"

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_LOWPAN:I = 0x6

.field private static final TRANSPORT_NAMES:[Ljava/lang/String;

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_AWARE:I = 0x5

.field static final UNRESTRICTED_CAPABILITIES:J = 0x1043L


# instance fields
.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Landroid/net/NetworkSpecifier;

.field private mSignalStrength:I

.field private mTransportTypes:J


# direct methods
.method static synthetic -set0(Landroid/net/NetworkCapabilities;I)I
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return p1
.end method

.method static synthetic -set1(Landroid/net/NetworkCapabilities;I)I
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return p1
.end method

.method static synthetic -set2(Landroid/net/NetworkCapabilities;J)J
    .registers 4

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide p1
.end method

.method static synthetic -set3(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/NetworkCapabilities;I)I
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return p1
.end method

.method static synthetic -set5(Landroid/net/NetworkCapabilities;J)J
    .registers 4

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CELLULAR"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WIFI"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "BLUETOOTH"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ETHERNET"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "VPN"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "WIFI_AWARE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "LOWPAN"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkCapabilities$1;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->clearAll()V

    const-wide/32 v0, 0xe000

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz p1, :cond_20

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget v0, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    :cond_20
    return-void
.end method

.method public static capabilityNameOf(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_54

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "MMS"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "SUPL"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "DUN"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "FOTA"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "IMS"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "CBS"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "WIFI_P2P"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "IA"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "RCS"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "XCAP"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "EIMS"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "NOT_METERED"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "INTERNET"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "NOT_RESTRICTED"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "TRUSTED"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "NOT_VPN"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "VALIDATED"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "CAPTIVE_PORTAL"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "FOREGROUND"

    return-object v0

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4c
        :pswitch_50
    .end packed-switch
.end method

.method public static capabilityNamesOf([I)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/StringJoiner;

    const-string/jumbo v2, "|"

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_1a

    const/4 v2, 0x0

    array-length v3, p0

    :goto_c
    if-ge v2, v3, :cond_1a

    aget v0, p0, v2

    invoke-static {v0}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkValidTransportType(I)V
    .registers 4

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid TransportType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .registers 4

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method private combineSignalStrength(Landroid/net/NetworkCapabilities;)V
    .registers 4

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t combine two networkSpecifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .registers 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-void
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v1, v2, :cond_e

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z
    .registers 8

    const-wide/32 v4, -0x70001

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v4

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidTransport(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_7

    const/4 v1, 0x6

    if-gt p0, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v1, v2, :cond_e

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .registers 7

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    if-eqz p2, :cond_8

    const-wide/32 v2, -0x74001

    and-long/2addr v0, v2

    :cond_8
    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .registers 4

    if-eqz p1, :cond_25

    invoke-direct {p0, p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_16

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_16
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_23

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22

    :cond_25
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->satisfiedBy(Landroid/net/NetworkSpecifier;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    instance-of v0, v0, Landroid/net/MatchAllNetworkSpecifier;

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_12

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static transportNameOf(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :cond_a
    sget-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static transportNamesOf([I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v2, "|"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_1a

    const/4 v2, 0x0

    array-length v3, p0

    :goto_c
    if-ge v2, v3, :cond_1a

    aget v1, p0, v2

    invoke-static {v1}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .registers 6

    if-ltz p1, :cond_6

    const/16 v0, 0x12

    if-le p1, v0, :cond_f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .registers 6

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public clearAll()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSignalStrength(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public describeFirstNonRequestableCapability()Ljava/lang/String;
    .registers 5

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "NET_CAPABILITY_VALIDATED"

    return-object v0

    :cond_c
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "NET_CAPABILITY_CAPTIVE_PORTAL"

    return-object v0

    :cond_18
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "NET_CAPABILITY_FOREGROUND"

    return-object v0

    :cond_24
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, 0x70000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown non-requestable capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4b
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-nez v0, :cond_53

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-eqz v0, :cond_57

    :cond_53
    const-string/jumbo v0, "link bandwidth"

    return-object v0

    :cond_57
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "signalStrength"

    return-object v0

    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method public describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 20

    if-nez p1, :cond_6

    const-string/jumbo v7, "other NetworkCapabilities was null"

    return-object v7

    :cond_6
    new-instance v6, Ljava/util/StringJoiner;

    const-string/jumbo v7, ", "

    invoke-direct {v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-wide/32 v8, -0x74805

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v16, -0x74805

    and-long v12, v14, v16

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v16, -0x74805

    and-long v10, v14, v16

    cmp-long v7, v12, v10

    if-eqz v7, :cond_4a

    invoke-static {v12, v13}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "immutable capabilities changed: %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4a
    invoke-direct/range {p0 .. p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_6b

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    const-string/jumbo v7, "specifier changed: %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6b
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_94

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "transports changed: %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_94
    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    :cond_14
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Landroid/net/NetworkCapabilities;

    if-nez v2, :cond_8

    :cond_7
    return v1

    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    :cond_27
    return v1
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 6

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .registers 6

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getCapabilities()[I
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object v0
.end method

.method public getSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return v0
.end method

.method public getTransportTypes()[I
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_8

    const/16 v2, 0x12

    if-le p1, v2, :cond_9

    :cond_8
    return v1

    :cond_9
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method public hasSignalStrength()Z
    .registers 3

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTransport(I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public hashCode()I
    .registers 9

    const-wide/16 v6, -0x1

    const/16 v4, 0x20

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v6

    long-to-int v0, v0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    return v0
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .registers 9

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v4, 0x1043

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    :goto_c
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v4, 0x7bc

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_21

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_21

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    :cond_21
    return-void

    :cond_22
    const/4 v1, 0x0

    goto :goto_c

    :cond_24
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .registers 6

    if-ltz p1, :cond_6

    const/16 v0, 0x12

    if-le p1, v0, :cond_f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .registers 6

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return-void
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;
    .registers 4

    if-eqz p1, :cond_14

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must have a single transport specified to use setNetworkSpecifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object p0
.end method

.method public setSignalStrength(I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v6

    array-length v8, v6

    if-lez v8, :cond_5e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Transports: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1f
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v6

    array-length v8, v6

    if-lez v8, :cond_62

    const-string/jumbo v0, " Capabilities: "

    :goto_29
    const/4 v2, 0x0

    :cond_2a
    :goto_2a
    array-length v8, v6

    if-ge v2, v8, :cond_66

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v2

    invoke-static {v9}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    array-length v8, v6

    if-ge v2, v8, :cond_2a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_5e
    const-string/jumbo v5, ""

    goto :goto_1f

    :cond_62
    const-string/jumbo v0, ""

    goto :goto_29

    :cond_66
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-lez v8, :cond_fb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " LinkUpBandwidth>="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Kbps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_87
    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-lez v8, :cond_ff

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " LinkDnBandwidth>="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Kbps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a8
    iget-object v8, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-nez v8, :cond_103

    const-string/jumbo v4, ""

    :goto_af
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v8

    if-eqz v8, :cond_121

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " SignalStrength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_cb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_fb
    const-string/jumbo v7, ""

    goto :goto_87

    :cond_ff
    const-string/jumbo v1, ""

    goto :goto_a8

    :cond_103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Specifier: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_af

    :cond_121
    const-string/jumbo v3, ""

    goto :goto_cb
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
