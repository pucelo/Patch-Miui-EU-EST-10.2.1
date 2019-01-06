.class final Landroid/net/lowpan/LowpanChannelInfo$1;
.super Ljava/lang/Object;
.source "LowpanChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanChannelInfo;
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
        "Landroid/net/lowpan/LowpanChannelInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanChannelInfo;
    .registers 4

    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;-><init>(Landroid/net/lowpan/LowpanChannelInfo;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-set0(Landroid/net/lowpan/LowpanChannelInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-set3(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-set5(Landroid/net/lowpan/LowpanChannelInfo;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-set4(Landroid/net/lowpan/LowpanChannelInfo;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-set2(Landroid/net/lowpan/LowpanChannelInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanChannelInfo;->-set1(Landroid/net/lowpan/LowpanChannelInfo;Z)Z

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanChannelInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanChannelInfo;
    .registers 3

    new-array v0, p1, [Landroid/net/lowpan/LowpanChannelInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanChannelInfo$1;->newArray(I)[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v0

    return-object v0
.end method
