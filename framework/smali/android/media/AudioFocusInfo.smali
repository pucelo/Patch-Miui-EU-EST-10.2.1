.class public final Landroid/media/AudioFocusInfo;
.super Ljava/lang/Object;
.source "AudioFocusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mClientId:Ljava/lang/String;

.field private final mClientUid:I

.field private mFlags:I

.field private mGainRequest:I

.field private mLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkTarget:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/AudioFocusInfo$1;

    invoke-direct {v0}, Landroid/media/AudioFocusInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    :cond_e
    iput-object p1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    iput p2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    if-nez p3, :cond_17

    const-string/jumbo p3, ""

    :cond_17
    iput-object p3, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    if-nez p4, :cond_1e

    const-string/jumbo p4, ""

    :cond_1e
    iput-object p4, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iput p5, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iput p6, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iput p7, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    iput p8, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return-void
.end method


# virtual methods
.method public clearLossReceived()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioFocusInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, v0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    :cond_21
    iget v1, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    iget v2, v0, Landroid/media/AudioFocusInfo;->mClientUid:I

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v3

    :cond_33
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v3

    :cond_3e
    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iget v2, v0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    if-eq v1, v2, :cond_45

    return v3

    :cond_45
    iget v1, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iget v2, v0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    if-eq v1, v2, :cond_4c

    return v3

    :cond_4c
    iget v1, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    iget v2, v0, Landroid/media/AudioFocusInfo;->mFlags:I

    if-eq v1, v2, :cond_53

    return v3

    :cond_53
    iget v1, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    iget v2, v0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    if-eq v1, v2, :cond_5a

    return v3

    :cond_5a
    return v4
.end method

.method public getAttributes()Landroid/media/AudioAttributes;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUid()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    return v0
.end method

.method public getGainRequest()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    return v0
.end method

.method public getLossReceived()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkTarget()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
