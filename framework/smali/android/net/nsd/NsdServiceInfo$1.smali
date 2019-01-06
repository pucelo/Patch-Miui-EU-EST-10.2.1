.class final Landroid/net/nsd/NsdServiceInfo$1;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdServiceInfo;
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
        "Landroid/net/nsd/NsdServiceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;
    .registers 11

    const/4 v8, 0x1

    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v2}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set2(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set3(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v8, :cond_25

    :try_start_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set0(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_25} :catch_52

    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set1(Landroid/net/nsd/NsdServiceInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v3, :cond_51

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v8, :cond_43

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v4, v5, [B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_43
    invoke-static {v2}, Landroid/net/nsd/NsdServiceInfo;->-get0(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_51
    return-object v2

    :catch_52
    move-exception v0

    goto :goto_25
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/nsd/NsdServiceInfo;
    .registers 3

    new-array v0, p1, [Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->newArray(I)[Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method
