.class public Landroid/hardware/radio/RadioManager$ModuleProperties;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ModuleProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private final mClassId:I

.field private final mId:I

.field private final mImplementor:Ljava/lang/String;

.field private final mIsBgScanSupported:Z

.field private final mIsCaptureSupported:Z

.field private final mNumAudioSources:I

.field private final mNumTuners:I

.field private final mProduct:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedIdentifierTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedProgramTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static synthetic -android_hardware_radio_RadioManager$ModuleProperties-mthref-0(Ljava/lang/Integer;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ[",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            "Z[I[I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo p2, "default"

    :cond_e
    iput-object p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iput p3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iput-object p5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iput p8, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    iput p9, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    iput-boolean p10, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    iput-object p11, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    iput-boolean p12, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-static {p13}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static/range {p14 .. p14}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    if-nez p15, :cond_37

    new-instance p15, Ljava/util/HashMap;

    invoke-direct/range {p15 .. p15}, Ljava/util/HashMap;-><init>()V

    :cond_37
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string/jumbo v1, "default"

    :cond_18
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_6b

    move v3, v4

    :goto_4b
    iput-boolean v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    const-class v3, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v0, 0x0

    :goto_5d
    array-length v3, v2

    if-ge v0, v3, :cond_6d

    iget-object v6, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    aget-object v3, v2, v0

    check-cast v3, Landroid/hardware/radio/RadioManager$BandDescriptor;

    aput-object v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6b
    move v3, v5

    goto :goto_4b

    :cond_6d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_90

    :goto_73
    iput-boolean v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/RadioManager$ModuleProperties;->arrayToSet([I)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {p1}, Landroid/hardware/radio/RadioManager;->-wrap0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    return-void

    :cond_90
    move v4, v5

    goto :goto_73
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static arrayToSet([I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static setToArray(Ljava/util/Set;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;->$INST$0:Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
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
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    if-nez v1, :cond_a

    return v3

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    :cond_21
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getClassId()I

    move-result v2

    if-eq v1, v2, :cond_2a

    return v3

    :cond_2a
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    if-nez v1, :cond_35

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    return v3

    :cond_35
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v3

    :cond_42
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getProduct()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    return v3

    :cond_4d
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v3

    :cond_5a
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_65

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    return v3

    :cond_65
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    return v3

    :cond_72
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    if-nez v1, :cond_7d

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getSerial()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    return v3

    :cond_7d
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    return v3

    :cond_8a
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getNumTuners()I

    move-result v2

    if-eq v1, v2, :cond_93

    return v3

    :cond_93
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getNumAudioSources()I

    move-result v2

    if-eq v1, v2, :cond_9c

    return v3

    :cond_9c
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->isCaptureSupported()Z

    move-result v2

    if-eq v1, v2, :cond_a5

    return v3

    :cond_a5
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return v3

    :cond_b2
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->isBackgroundScanningSupported()Z

    move-result v2

    if-eq v1, v2, :cond_bb

    return v3

    :cond_bb
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    iget-object v2, v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    return v3

    :cond_c6
    return v4
.end method

.method public getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public getClassId()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    return v0
.end method

.method public getImplementor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAudioSources()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    return v0
.end method

.method public getNumTuners()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v1, v2, v5

    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    add-int v1, v2, v5

    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    if-nez v2, :cond_6f

    move v2, v3

    :goto_20
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    if-nez v2, :cond_76

    move v2, v3

    :goto_29
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_7d

    move v2, v3

    :goto_32
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    if-nez v2, :cond_84

    move v2, v3

    :goto_3b
    add-int v1, v5, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    add-int v1, v2, v5

    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    add-int v1, v2, v5

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eqz v2, :cond_8b

    move v2, v4

    :goto_50
    add-int v1, v5, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v1, v2, v5

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    if-eqz v5, :cond_8d

    :goto_62
    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    return v1

    :cond_6f
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_20

    :cond_76
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_29

    :cond_7d
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_32

    :cond_84
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3b

    :cond_8b
    move v2, v3

    goto :goto_50

    :cond_8d
    move v4, v3

    goto :goto_62
.end method

.method public isBackgroundScanningSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    return v0
.end method

.method public isCaptureSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    return v0
.end method

.method public isProgramIdentifierSupported(I)Z
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProgramTypeSupported(I)Z
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ModuleProperties [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImplementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNumTuners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNumAudioSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsCaptureSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsBgScanSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsBgScanSupported:Z

    if-eqz v0, :cond_5d

    :goto_40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedProgramTypes:Ljava/util/Set;

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSupportedIdentifierTypes:Ljava/util/Set;

    invoke-static {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->setToArray(Ljava/util/Set;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/RadioManager;->-wrap1(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void

    :cond_5b
    move v0, v2

    goto :goto_34

    :cond_5d
    move v1, v2

    goto :goto_40
.end method
