.class final Landroid/hardware/location/NanoAppInstanceInfo$1;
.super Ljava/lang/Object;
.source "NanoAppInstanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/NanoAppInstanceInfo;
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
        "Landroid/hardware/location/NanoAppInstanceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 4

    new-instance v0, Landroid/hardware/location/NanoAppInstanceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppInstanceInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 3

    new-array v0, p1, [Landroid/hardware/location/NanoAppInstanceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo$1;->newArray(I)[Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    return-object v0
.end method