.class final Landroid/telephony/CellInfo$1;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfo;
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
        "Landroid/telephony/CellInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Bad CellInfo Parcel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_10
    invoke-static {p1}, Landroid/telephony/CellInfoGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;

    move-result-object v1

    return-object v1

    :pswitch_15
    invoke-static {p1}, Landroid/telephony/CellInfoCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;

    move-result-object v1

    return-object v1

    :pswitch_1a
    invoke-static {p1}, Landroid/telephony/CellInfoLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;

    move-result-object v1

    return-object v1

    :pswitch_1f
    invoke-static {p1}, Landroid/telephony/CellInfoWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

    move-result-object v1

    return-object v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellInfo;
    .registers 3

    new-array v0, p1, [Landroid/telephony/CellInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->newArray(I)[Landroid/telephony/CellInfo;

    move-result-object v0

    return-object v0
.end method
