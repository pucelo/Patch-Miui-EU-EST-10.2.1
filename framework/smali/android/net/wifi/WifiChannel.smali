.class public Landroid/net/wifi/WifiChannel;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiChannel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CHANNEL_NUM:I = 0xc4

.field private static final MAX_FREQ_MHZ:I = 0x16c1

.field private static final MIN_CHANNEL_NUM:I = 0x1

.field private static final MIN_FREQ_MHZ:I = 0x96c


# instance fields
.field public channelNum:I

.field public freqMHz:I

.field public isDFS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/WifiChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public isValid()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v1, 0x96c

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v1, 0x16c1

    if-le v0, v1, :cond_f

    :cond_e
    return v2

    :cond_f
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    if-lt v0, v3, :cond_19

    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    const/16 v1, 0xc4

    if-le v0, v1, :cond_1a

    :cond_19
    return v2

    :cond_1a
    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
