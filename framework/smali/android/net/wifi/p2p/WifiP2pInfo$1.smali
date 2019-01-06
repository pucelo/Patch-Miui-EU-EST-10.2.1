.class final Landroid/net/wifi/p2p/WifiP2pInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pInfo;
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
        "Landroid/net/wifi/p2p/WifiP2pInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_2a

    move v2, v3

    :goto_e
    iput-boolean v2, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_17

    move v4, v3

    :cond_17
    iput-boolean v4, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_29

    :try_start_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_1f .. :try_end_29} :catch_2c

    :cond_29
    :goto_29
    return-object v1

    :cond_2a
    move v2, v4

    goto :goto_e

    :catch_2c
    move-exception v0

    goto :goto_29
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    return-object v0
.end method
