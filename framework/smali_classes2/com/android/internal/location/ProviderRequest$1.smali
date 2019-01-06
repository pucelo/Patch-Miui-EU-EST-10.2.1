.class final Lcom/android/internal/location/ProviderRequest$1;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderRequest;
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
        "Lcom/android/internal/location/ProviderRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderRequest;
    .registers 8

    const/4 v3, 0x1

    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_2b

    :goto_c
    iput-boolean v3, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_2d

    iget-object v4, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2b
    const/4 v3, 0x0

    goto :goto_c

    :cond_2d
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderRequest;
    .registers 3

    new-array v0, p1, [Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderRequest$1;->newArray(I)[Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    return-object v0
.end method
