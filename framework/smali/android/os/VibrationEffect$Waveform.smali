.class public Landroid/os/VibrationEffect$Waveform;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Waveform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Waveform$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/VibrationEffect$Waveform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAmplitudes:[I

.field private mRepeat:I

.field private mTimings:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/VibrationEffect$Waveform$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Waveform$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Waveform;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    return-void
.end method

.method public constructor <init>([J[II)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    iput p3, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    return-void
.end method

.method private static hasNonZeroEntry([J)Z
    .registers 9

    const/4 v3, 0x0

    array-length v4, p0

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_12

    aget-wide v0, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_f

    const/4 v2, 0x1

    return v2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/os/VibrationEffect$Waveform;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget-object v3, v0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    iget-object v3, v0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    iget v3, v0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    if-ne v2, v3, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public getAmplitudes()[I
    .registers 2

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    return-object v0
.end method

.method public getRepeatIndex()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    return v0
.end method

.method public getTimings()[J
    .registers 2

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    mul-int/lit8 v0, v1, 0x25

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x25

    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    mul-int/lit8 v0, v1, 0x25

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Waveform{mTimings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAmplitudes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 12

    const/4 v1, 0x0

    const/4 v10, -0x1

    iget-object v4, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v4, v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v5, v5

    if-eq v4, v5, :cond_3c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", amplitudes.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    iget-object v4, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v4}, Landroid/os/VibrationEffect$Waveform;->hasNonZeroEntry([J)Z

    move-result v4

    if-nez v4, :cond_6b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "at least one timing must be non-zero (timings="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v6, v5

    move v4, v1

    :goto_6f
    if-ge v4, v6, :cond_a3

    aget-wide v2, v5, v4

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_a0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timings must all be >= 0 (timings="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a0
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_a3
    iget-object v4, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    array-length v5, v4

    :goto_a6
    if-ge v1, v5, :cond_da

    aget v0, v4, v1

    if-lt v0, v10, :cond_b0

    const/16 v6, 0xff

    if-le v0, v6, :cond_d7

    :cond_b0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "amplitudes must all be DEFAULT_AMPLITUDE or between 0 and 255 (amplitudes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    :cond_da
    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    if-lt v1, v10, :cond_e5

    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    iget-object v4, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v4, v4

    if-lt v1, v4, :cond_116

    :cond_e5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "repeat index must be within the bounds of the timings array (timings.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
