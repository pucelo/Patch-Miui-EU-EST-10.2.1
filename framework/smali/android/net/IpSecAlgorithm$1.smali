.class final Landroid/net/IpSecAlgorithm$1;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecAlgorithm;
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
        "Landroid/net/IpSecAlgorithm;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecAlgorithm;
    .registers 4

    new-instance v0, Landroid/net/IpSecAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/IpSecAlgorithm;-><init>(Landroid/os/Parcel;Landroid/net/IpSecAlgorithm;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/IpSecAlgorithm$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/IpSecAlgorithm;
    .registers 3

    new-array v0, p1, [Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/IpSecAlgorithm$1;->newArray(I)[Landroid/net/IpSecAlgorithm;

    move-result-object v0

    return-object v0
.end method