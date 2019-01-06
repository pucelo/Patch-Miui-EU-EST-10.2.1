.class public Landroid/hardware/radio/RadioManager$AmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$AmBandConfig$1;,
        Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$AmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStereo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIZ)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_b
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$AmBandConfig;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandConfig;

    if-nez v1, :cond_11

    return v3

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$AmBandConfig;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    :cond_1d
    return v4
.end method

.method public getStereo()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x1f

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    move-result v1

    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_d
    add-int v1, v3, v2

    return v1

    :cond_10
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AmBandConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

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
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_8
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method
