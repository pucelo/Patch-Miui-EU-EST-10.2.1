.class public final Landroid/app/timezone/DistroFormatVersion;
.super Ljava/lang/Object;
.source "DistroFormatVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/DistroFormatVersion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/timezone/DistroFormatVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMajorVersion:I

.field private final mMinorVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/timezone/DistroFormatVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroFormatVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroFormatVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "major"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    const-string/jumbo v0, "minor"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

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

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/app/timezone/DistroFormatVersion;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/app/timezone/DistroFormatVersion;

    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v4, v0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v4, v0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-ne v3, v4, :cond_23

    :goto_22
    return v1

    :cond_23
    move v1, v2

    goto :goto_22
.end method

.method public getMajorVersion()I
    .registers 2

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    add-int v0, v1, v2

    return v0
.end method

.method public supports(Landroid/app/timezone/DistroFormatVersion;)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v2, p1, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-ne v1, v2, :cond_e

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v2, p1, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-gt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistroFormatVersion{mMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
