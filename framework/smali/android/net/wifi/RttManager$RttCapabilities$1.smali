.class final Landroid/net/wifi/RttManager$RttCapabilities$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$RttCapabilities;
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
        "Landroid/net/wifi/RttManager$RttCapabilities;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4f

    move v1, v2

    :goto_e
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_51

    move v1, v2

    :goto_17
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_53

    move v1, v2

    :goto_20
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_55

    move v1, v2

    :goto_29
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_57

    move v1, v2

    :goto_3e
    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_59

    :goto_46
    iput-boolean v2, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    return-object v0

    :cond_4f
    move v1, v3

    goto :goto_e

    :cond_51
    move v1, v3

    goto :goto_17

    :cond_53
    move v1, v3

    goto :goto_20

    :cond_55
    move v1, v3

    goto :goto_29

    :cond_57
    move v1, v3

    goto :goto_3e

    :cond_59
    move v2, v3

    goto :goto_46
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/RttManager$RttCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method
