.class final Landroid/hardware/display/WifiDisplay$1;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplay;
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
        "Landroid/hardware/display/WifiDisplay;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v4, 0x1

    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v5, 0x1

    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v6, 0x1

    :goto_21
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0

    :cond_27
    const/4 v4, 0x0

    goto :goto_13

    :cond_29
    const/4 v5, 0x0

    goto :goto_1a

    :cond_2b
    const/4 v6, 0x0

    goto :goto_21
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplay;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    :goto_4
    return-object v0

    :cond_5
    new-array v0, p1, [Landroid/hardware/display/WifiDisplay;

    goto :goto_4
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->newArray(I)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method
