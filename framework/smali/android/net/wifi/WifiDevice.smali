.class public Landroid/net/wifi/WifiDevice;
.super Ljava/lang/Object;
.source "WifiDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiDevice$1;
    }
.end annotation


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCONNECTED:I


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/WifiDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-eqz p2, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    :cond_15
    :goto_15
    iput-object p1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    return-void

    :cond_18
    if-eqz p2, :cond_15

    iput v1, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    goto :goto_15
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    instance-of v2, p1, Landroid/net/wifi/WifiDevice;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    :cond_9
    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/WifiDevice;

    iget-object v2, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    :cond_17
    iget-object v1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
