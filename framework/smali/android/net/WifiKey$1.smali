.class final Landroid/net/WifiKey$1;
.super Ljava/lang/Object;
.source "WifiKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/WifiKey;
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
        "Landroid/net/WifiKey;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/WifiKey;
    .registers 4

    new-instance v0, Landroid/net/WifiKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/WifiKey;-><init>(Landroid/os/Parcel;Landroid/net/WifiKey;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/WifiKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/WifiKey;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/WifiKey;
    .registers 3

    new-array v0, p1, [Landroid/net/WifiKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/net/WifiKey$1;->newArray(I)[Landroid/net/WifiKey;

    move-result-object v0

    return-object v0
.end method
