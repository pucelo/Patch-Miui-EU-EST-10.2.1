.class public final Landroid/net/IpSecSpiResponse;
.super Ljava/lang/Object;
.source "IpSecSpiResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecSpiResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/IpSecSpiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecSpiResponse"


# instance fields
.field public final resourceId:I

.field public final spi:I

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/IpSecSpiResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecSpiResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecSpiResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Valid status implies other args must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    iput v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput v0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    iput p2, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput p3, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecSpiResponse;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecSpiResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/IpSecSpiResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
