.class final Landroid/bluetooth/SdpPseRecord$1;
.super Ljava/lang/Object;
.source "SdpPseRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpPseRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpPseRecord;
    .registers 3

    new-instance v0, Landroid/bluetooth/SdpPseRecord;

    invoke-direct {v0, p1}, Landroid/bluetooth/SdpPseRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpPseRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpPseRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/SdpPseRecord;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/SdpPseRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpPseRecord$1;->newArray(I)[Landroid/bluetooth/SdpPseRecord;

    move-result-object v0

    return-object v0
.end method
