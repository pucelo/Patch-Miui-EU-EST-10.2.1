.class final Landroid/service/gatekeeper/GateKeeperResponse$1;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/GateKeeperResponse;
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
        "Landroid/service/gatekeeper/GateKeeperResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 9

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Landroid/service/gatekeeper/GateKeeperResponse;->-wrap0(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    :goto_f
    return-object v1

    :cond_10
    if-nez v2, :cond_2c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_2a

    const/4 v3, 0x1

    :goto_19
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_25

    new-array v0, v4, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_25
    invoke-static {v0, v3}, Landroid/service/gatekeeper/GateKeeperResponse;->createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    goto :goto_f

    :cond_2a
    const/4 v3, 0x0

    goto :goto_19

    :cond_2c
    invoke-static {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    goto :goto_f
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 3

    new-array v0, p1, [Landroid/service/gatekeeper/GateKeeperResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method
