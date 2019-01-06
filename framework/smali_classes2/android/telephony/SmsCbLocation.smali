.class public Landroid/telephony/SmsCbLocation;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbLocation$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mPlmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/SmsCbLocation$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbLocation$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iput v1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iput v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iput p3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_d

    instance-of v3, p1, Landroid/telephony/SmsCbLocation;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    :cond_d
    return v2

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/telephony/SmsCbLocation;

    iget-object v3, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v4, v0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v4, v0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-ne v3, v4, :cond_28

    :goto_27
    return v1

    :cond_28
    move v1, v2

    goto :goto_27
.end method

.method public getCid()I
    .registers 2

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return v0
.end method

.method public getLac()I
    .registers 2

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    add-int v0, v1, v2

    return v0
.end method

.method public isInLocationArea(Landroid/telephony/SmsCbLocation;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v2, :cond_d

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v1, p1, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v1, :cond_d

    return v3

    :cond_d
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_18

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v1, p1, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v1, :cond_18

    return v3

    :cond_18
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInLocationArea(Ljava/lang/String;II)Z
    .registers 7

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_14

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, p2, :cond_14

    return v1

    :cond_14
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v2, :cond_1d

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, p3, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x5d

    const/16 v1, 0x5b

    const/16 v2, 0x2c

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
