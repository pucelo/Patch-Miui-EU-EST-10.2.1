.class final Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
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
        "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    .registers 8

    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_c
    if-ge v3, v4, :cond_1c

    aget-object v1, v2, v3

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->-get0(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;

    move-result-object v5

    check-cast v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    move-result-object v0

    return-object v0
.end method
