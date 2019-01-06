.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
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
    name = "ProgramInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_LIVE:I = 0x1

.field private static final FLAG_MUTED:I = 0x2

.field private static final FLAG_TRAFFIC_ANNOUNCEMENT:I = 0x8

.field private static final FLAG_TRAFFIC_PROGRAM:I = 0x4


# instance fields
.field private final mDigital:Z

.field private final mFlags:I

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final mSignalStrength:I

.field private final mStereo:Z

.field private final mTuned:Z

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/ProgramSelector;ZZZILandroid/hardware/radio/RadioMetadata;ILjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "ZZZI",
            "Landroid/hardware/radio/RadioMetadata;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iput-boolean p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    iput-boolean p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    iput-boolean p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    iput p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    iput p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez p8, :cond_18

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    :cond_18
    iput-object p8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4c

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4e

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_27

    move v2, v1

    :cond_27
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_50

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    :goto_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    invoke-static {p1}, Landroid/hardware/radio/RadioManager;->-wrap0(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-void

    :cond_4c
    move v0, v2

    goto :goto_15

    :cond_4e
    move v0, v2

    goto :goto_1e

    :cond_50
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    goto :goto_3f
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

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
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-nez v1, :cond_a

    return v3

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    :cond_1a
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isTuned()Z

    move-result v2

    if-eq v1, v2, :cond_23

    return v3

    :cond_23
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isStereo()Z

    move-result v2

    if-eq v1, v2, :cond_2c

    return v3

    :cond_2c
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isDigital()Z

    move-result v2

    if-eq v1, v2, :cond_35

    return v3

    :cond_35
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    iget v2, v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    if-eq v1, v2, :cond_3c

    return v3

    :cond_3c
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result v2

    if-eq v1, v2, :cond_45

    return v3

    :cond_45
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v1, :cond_50

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v1

    if-eqz v1, :cond_5d

    return v3

    :cond_50
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/RadioMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    return v3

    :cond_5d
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v2, v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    return v3

    :cond_68
    return v4
.end method

.method public getChannel()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_9

    move-result-wide v2

    long-to-int v1, v2

    return v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "BroadcastRadio.manager"

    const-string/jumbo v2, "Not an AM/FM program"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public getSelector()Landroid/hardware/radio/ProgramSelector;
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object v0
.end method

.method public getSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    return v0
.end method

.method public getSubChannel()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_b

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    return v1

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
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

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v2, :cond_46

    move v2, v3

    :goto_14
    add-int v1, v5, v2

    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v2, :cond_48

    move v2, v3

    :goto_1d
    add-int v1, v5, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v5, :cond_4a

    :goto_25
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v3, :cond_4c

    :goto_39
    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    return v1

    :cond_46
    move v2, v4

    goto :goto_14

    :cond_48
    move v2, v4

    goto :goto_1d

    :cond_4a
    move v3, v4

    goto :goto_25

    :cond_4c
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioMetadata;->hashCode()I

    move-result v4

    goto :goto_39
.end method

.method public isDigital()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    return v0
.end method

.method public isLive()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isMuted()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isStereo()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    return v0
.end method

.method public isTrafficAnnouncementActive()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isTrafficProgram()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isTuned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProgramInfo [mSelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTuned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDigital="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_6a

    const-string/jumbo v0, ""

    :goto_5a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", mMetadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioMetadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v0, :cond_39

    move v0, v1

    :goto_c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_15
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_1e
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_3f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2e
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/RadioManager;->-wrap1(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void

    :cond_39
    move v0, v2

    goto :goto_c

    :cond_3b
    move v0, v2

    goto :goto_15

    :cond_3d
    move v0, v2

    goto :goto_1e

    :cond_3f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e
.end method
