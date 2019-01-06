.class public Landroid/net/wifi/WifiScanner$PnoSettings;
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
    name = "PnoSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$PnoSettings$1;,
        Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public band5GHzBonus:I

.field public currentConnectionBonus:I

.field public initialScoreMax:I

.field public isConnected:Z

.field public min24GHzRssi:I

.field public min5GHzRssi:I

.field public networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

.field public sameNetworkBonus:I

.field public secureBonus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .registers 6

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_37
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v1, v1

    if-ge v0, v1, :cond_5f

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-byte v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object v1, v1, v0

    iget-byte v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_5a
    move v1, v2

    goto :goto_6

    :cond_5c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5f
    return-void
.end method
