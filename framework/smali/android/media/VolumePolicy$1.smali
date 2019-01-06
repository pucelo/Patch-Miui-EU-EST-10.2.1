.class final Landroid/media/VolumePolicy$1;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumePolicy;
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
        "Landroid/media/VolumePolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Landroid/media/VolumePolicy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v1

    :goto_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    return-object v4

    :cond_20
    move v0, v2

    goto :goto_b

    :cond_22
    move v3, v2

    goto :goto_12

    :cond_24
    move v1, v2

    goto :goto_18
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/VolumePolicy;
    .registers 3

    new-array v0, p1, [Landroid/media/VolumePolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->newArray(I)[Landroid/media/VolumePolicy;

    move-result-object v0

    return-object v0
.end method
