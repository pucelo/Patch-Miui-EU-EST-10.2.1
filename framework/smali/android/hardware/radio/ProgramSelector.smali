.class public final Landroid/hardware/radio/ProgramSelector;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramSelector$1;,
        Landroid/hardware/radio/ProgramSelector$Identifier;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/ProgramSelector;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTIFIER_TYPE_AMFM_FREQUENCY:I = 0x1

.field public static final IDENTIFIER_TYPE_DAB_ENSEMBLE:I = 0x6

.field public static final IDENTIFIER_TYPE_DAB_FREQUENCY:I = 0x8

.field public static final IDENTIFIER_TYPE_DAB_SCID:I = 0x7

.field public static final IDENTIFIER_TYPE_DAB_SIDECC:I = 0x5

.field public static final IDENTIFIER_TYPE_DRMO_FREQUENCY:I = 0xa

.field public static final IDENTIFIER_TYPE_DRMO_MODULATION:I = 0xb

.field public static final IDENTIFIER_TYPE_DRMO_SERVICE_ID:I = 0x9

.field public static final IDENTIFIER_TYPE_HD_STATION_ID_EXT:I = 0x3

.field public static final IDENTIFIER_TYPE_HD_SUBCHANNEL:I = 0x4

.field public static final IDENTIFIER_TYPE_RDS_PI:I = 0x2

.field public static final IDENTIFIER_TYPE_SXM_CHANNEL:I = 0xd

.field public static final IDENTIFIER_TYPE_SXM_SERVICE_ID:I = 0xc

.field public static final IDENTIFIER_TYPE_VENDOR_PRIMARY_END:I = 0x7cf

.field public static final IDENTIFIER_TYPE_VENDOR_PRIMARY_START:I = 0x3e8

.field public static final PROGRAM_TYPE_AM:I = 0x1

.field public static final PROGRAM_TYPE_AM_HD:I = 0x3

.field public static final PROGRAM_TYPE_DAB:I = 0x5

.field public static final PROGRAM_TYPE_DRMO:I = 0x6

.field public static final PROGRAM_TYPE_FM:I = 0x2

.field public static final PROGRAM_TYPE_FM_HD:I = 0x4

.field public static final PROGRAM_TYPE_SXM:I = 0x7

.field public static final PROGRAM_TYPE_VENDOR_END:I = 0x7cf

.field public static final PROGRAM_TYPE_VENDOR_START:I = 0x3e8


# instance fields
.field private final mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mProgramType:I

.field private final mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mVendorIds:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/ProgramSelector$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_8

    new-array p3, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    :cond_8
    if-nez p4, :cond_c

    new-array p4, v0, [J

    :cond_c
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$INST$0:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput p1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p4, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$INST$1:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "secondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    return-object v0
.end method

.method public static createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;
    .registers 13

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_7

    if-ne p0, v5, :cond_30

    :cond_7
    const/4 v0, 0x1

    :goto_8
    if-eq p0, v5, :cond_d

    const/4 v5, 0x2

    if-ne p0, v5, :cond_32

    :cond_d
    const/4 v1, 0x1

    :goto_e
    if-nez v0, :cond_34

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_34

    if-eq p0, v8, :cond_34

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown band: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_30
    const/4 v0, 0x0

    goto :goto_8

    :cond_32
    const/4 v1, 0x0

    goto :goto_e

    :cond_34
    if-ltz p2, :cond_3a

    const/16 v5, 0x8

    if-le p2, v5, :cond_54

    :cond_3a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid subchannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_54
    if-lez p2, :cond_63

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_63

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Subchannels are not supported for non-HD radio"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_63
    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->isValidAmFmFrequency(ZI)Z

    move-result v5

    if-nez v5, :cond_72

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Provided value is not a valid AM/FM frequency"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_72
    if-eqz v0, :cond_92

    const/4 v3, 0x1

    :goto_75
    new-instance v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    int-to-long v6, p1

    invoke-direct {v2, v8, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    const/4 v4, 0x0

    if-lez p2, :cond_8b

    new-array v4, v8, [Landroid/hardware/radio/ProgramSelector$Identifier;

    new-instance v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    add-int/lit8 v6, p2, -0x1

    int-to-long v6, v6

    const/4 v8, 0x4

    invoke-direct {v5, v8, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    aput-object v5, v4, v9

    :cond_8b
    new-instance v5, Landroid/hardware/radio/ProgramSelector;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v4, v6}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v5

    :cond_92
    const/4 v3, 0x2

    goto :goto_75
.end method

.method private static isValidAmFmFrequency(ZI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    const/16 v2, 0x96

    if-le p1, v2, :cond_d

    const/16 v2, 0x7530

    if-ge p1, v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    const v2, 0xea60

    if-le p1, v2, :cond_1a

    const v2, 0x1adb0

    if-ge p1, v2, :cond_1a

    move v1, v0

    :cond_1a
    return v1
.end method

.method static synthetic lambda$-android_hardware_radio_ProgramSelector_14965(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic lambda$-android_hardware_radio_ProgramSelector_7454(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    instance-of v2, p1, Landroid/hardware/radio/ProgramSelector;

    if-nez v2, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getProgramType()I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    if-ne v2, v3, :cond_1f

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1f
    return v1
.end method

.method public getAllIds(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v2

    if-ne v2, p1, :cond_12

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v3, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_16
    if-ge v2, v4, :cond_26

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    if-ne v5, p1, :cond_23

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v2
.end method

.method public getFirstId(I)J
    .registers 7

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    if-ne v1, p1, :cond_f

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v2

    return-wide v2

    :cond_f
    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_13
    if-ge v1, v3, :cond_25

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v4

    if-ne v4, p1, :cond_22

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v2

    return-wide v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getProgramType()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    return v0
.end method

.method public getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getVendorIds()[J
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ProgramSelector(type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", primary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    array-length v1, v1

    if-lez v1, :cond_2c

    const-string/jumbo v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-object v1, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    array-length v1, v1

    if-lez v1, :cond_3d

    const-string/jumbo v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3d
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Landroid/hardware/radio/ProgramSelector;->mProgramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramSelector;->mVendorIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
