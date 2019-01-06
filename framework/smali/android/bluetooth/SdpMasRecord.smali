.class public Landroid/bluetooth/SdpMasRecord;
.super Ljava/lang/Object;
.source "SdpMasRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpMasRecord$1;,
        Landroid/bluetooth/SdpMasRecord$MessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mMasInstanceId:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I

.field private final mSupportedMessageTypes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/SdpMasRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMasRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMasRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    iput p2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    iput p3, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    iput p4, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    iput p5, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    iput p6, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    iput-object p7, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getL2capPsm()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    return v0
.end method

.method public getMasInstanceId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    return v0
.end method

.method public getProfileVersion()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    return v0
.end method

.method public getRfcommCannelNumber()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFeatures()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    return v0
.end method

.method public getSupportedMessageTypes()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    return v0
.end method

.method public msgSupported(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    const-string/jumbo v0, "Bluetooth MAS SDP Record:\n"

    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    if-eq v1, v3, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mas Instance Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    if-eq v1, v3, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "RFCOMM Chan Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4e
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    if-eq v1, v3, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "L2CAP PSM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_73
    iget-object v1, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_98

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Service Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_98
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    if-eq v1, v3, :cond_bd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Profile version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_bd
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    if-eq v1, v3, :cond_e2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Supported msg types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e2
    iget v1, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    if-eq v1, v3, :cond_107

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Supported features: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_107
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mMasInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpMasRecord;->mSupportedMessageTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/SdpMasRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method