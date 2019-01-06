.class public Landroid/net/wifi/WifiScanner$ScanSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanSettings$1;,
        Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public band:I

.field public channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

.field public isPnoScan:Z

.field public maxPeriodInMs:I

.field public maxScansToCache:I

.field public numBssidsPerScan:I

.field public periodInMs:I

.field public reportEvents:I

.field public stepCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    if-eqz v1, :cond_5e

    move v1, v2

    :goto_2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_38
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_65

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    if-eqz v1, :cond_60

    move v1, v2

    :goto_58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_5e
    move v1, v3

    goto :goto_2a

    :cond_60
    move v1, v3

    goto :goto_58

    :cond_62
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_65
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    if-eqz v1, :cond_81

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_70
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    array-length v1, v1

    if-ge v0, v1, :cond_84

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_81
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_84
    return-void
.end method