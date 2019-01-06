.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthWcdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final WCDMA_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final WCDMA_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final WCDMA_SIGNAL_STRENGTH_MODERATE:I = 0x5


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->initialize(II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthWcdma;
    .registers 2

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 3

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    if-nez p1, :cond_a

    return v3

    :catch_8
    move-exception v1

    return v3

    :cond_a
    iget v4, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    if-ne v4, v5, :cond_17

    iget v4, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    if-ne v4, v5, :cond_17

    const/4 v3, 0x1

    :cond_17
    return v3
.end method

.method public getAsuLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    return v0
.end method

.method public getDbm()I
    .registers 5

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    const/16 v3, 0x63

    if-ne v2, v3, :cond_13

    const v0, 0x7fffffff

    :goto_9
    const v3, 0x7fffffff

    if-eq v0, v3, :cond_15

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    :goto_12
    return v1

    :cond_13
    move v0, v2

    goto :goto_9

    :cond_15
    const v1, 0x7fffffff

    goto :goto_12
.end method

.method public getLevel()I
    .registers 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_9

    const/16 v2, 0x63

    if-ne v0, v2, :cond_b

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1

    :cond_b
    const/16 v2, 0xc

    if-lt v0, v2, :cond_11

    const/4 v1, 0x4

    goto :goto_a

    :cond_11
    const/16 v2, 0x8

    if-lt v0, v2, :cond_17

    const/4 v1, 0x3

    goto :goto_a

    :cond_17
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1c

    const/4 v1, 0x2

    goto :goto_a

    :cond_1c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    return v1
.end method

.method public initialize(II)V
    .registers 3

    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iput p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return-void
.end method

.method public setDefaultValues()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CellSignalStrengthWcdma: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
