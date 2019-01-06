.class public Landroid/hardware/radio/RadioManager$FmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$FmBandConfig$1;,
        Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$FmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAf:Z

.field private final mEa:Z

.field private final mRds:Z

.field private final mStereo:Z

.field private final mTa:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/RadioManager$FmBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$FmBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIZZZZZ)V
    .registers 11

    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    iput-boolean p7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    iput-boolean p8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    iput-boolean p10, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_33

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_35

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_37

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_39

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3b

    :goto_30
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    return-void

    :cond_33
    move v0, v2

    goto :goto_d

    :cond_35
    move v0, v2

    goto :goto_16

    :cond_37
    move v0, v2

    goto :goto_1f

    :cond_39
    move v0, v2

    goto :goto_28

    :cond_3b
    move v1, v2

    goto :goto_30
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(Landroid/os/Parcel;)V

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$FmBandConfig;

    if-nez v1, :cond_11

    return v3

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eq v1, v2, :cond_22

    return v3

    :cond_22
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eq v1, v2, :cond_29

    return v3

    :cond_29
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eq v1, v2, :cond_30

    return v3

    :cond_30
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    iget-boolean v2, v0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    if-eq v1, v2, :cond_37

    return v3

    :cond_37
    return v4
.end method

.method public getAf()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    return v0
.end method

.method public getEa()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    return v0
.end method

.method public getRds()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    return v0
.end method

.method public getStereo()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    return v0
.end method

.method public getTa()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    return v0
.end method

.method public hashCode()I
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1f

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    move-result v1

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eqz v2, :cond_35

    move v2, v3

    :goto_f
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eqz v2, :cond_37

    move v2, v3

    :goto_18
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eqz v2, :cond_39

    move v2, v3

    :goto_21
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eqz v2, :cond_3b

    move v2, v3

    :goto_2a
    add-int v1, v5, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    if-eqz v5, :cond_3d

    :goto_32
    add-int v1, v2, v3

    return v1

    :cond_35
    move v2, v4

    goto :goto_f

    :cond_37
    move v2, v4

    goto :goto_18

    :cond_39
    move v2, v4

    goto :goto_21

    :cond_3b
    move v2, v4

    goto :goto_2a

    :cond_3d
    move v3, v4

    goto :goto_32
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FmBandConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEa ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mStereo:Z

    if-eqz v0, :cond_32

    move v0, v1

    :goto_a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mRds:Z

    if-eqz v0, :cond_34

    move v0, v1

    :goto_13
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mTa:Z

    if-eqz v0, :cond_36

    move v0, v1

    :goto_1c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mAf:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_25
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig;->mEa:Z

    if-eqz v0, :cond_3a

    :goto_2d
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_32
    move v0, v2

    goto :goto_a

    :cond_34
    move v0, v2

    goto :goto_13

    :cond_36
    move v0, v2

    goto :goto_1c

    :cond_38
    move v0, v2

    goto :goto_25

    :cond_3a
    move v1, v2

    goto :goto_2d
.end method
