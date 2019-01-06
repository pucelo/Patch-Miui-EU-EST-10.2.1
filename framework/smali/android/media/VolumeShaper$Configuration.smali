.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$1;,
        Landroid/media/VolumeShaper$Configuration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final TYPE_ID:I = 0x0

.field static final TYPE_SCALE:I = 0x1


# instance fields
.field private final mDurationMs:D

.field private final mId:I

.field private final mInterpolatorType:I

.field private final mOptionFlags:I

.field private final mTimes:[F

.field private final mType:I

.field private final mVolumes:[F


# direct methods
.method static synthetic -wrap0([F[FZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static synthetic -wrap1(FZ)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static synthetic -wrap2([FZ)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 14

    const-wide/16 v12, 0x3e8

    const/16 v11, 0x10

    const/4 v10, 0x2

    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    new-array v7, v10, [F

    fill-array-data v7, :array_aa

    new-array v8, v10, [F

    fill-array-data v8, :array_b2

    invoke-virtual {v6, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    new-array v7, v10, [F

    fill-array-data v7, :array_ba

    new-array v8, v10, [F

    fill-array-data v8, :array_c2

    invoke-virtual {v6, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    const/16 v0, 0x10

    new-array v5, v11, [F

    new-array v4, v11, [F

    new-array v2, v11, [F

    const/4 v1, 0x0

    :goto_51
    if-ge v1, v11, :cond_73

    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    aput v6, v5, v1

    aget v6, v5, v1

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    aput v3, v4, v1

    mul-float v6, v3, v3

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_73
    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v6, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    invoke-virtual {v6, v10}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v6

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    new-instance v6, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v6}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    sput-object v6, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_aa
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "negative id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method private constructor <init>(IIIDI[F[F)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method synthetic constructor <init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method private static checkCurveForErrors([F[FZ)Ljava/lang/String;
    .registers 11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_c

    const-string/jumbo v1, "times array must be non-null"

    return-object v1

    :cond_c
    if-nez p1, :cond_12

    const-string/jumbo v1, "volumes array must be non-null"

    return-object v1

    :cond_12
    array-length v1, p0

    array-length v4, p1

    if-eq v1, v4, :cond_1a

    const-string/jumbo v1, "array length must match"

    return-object v1

    :cond_1a
    array-length v1, p0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_22

    const-string/jumbo v1, "array length must be at least 2"

    return-object v1

    :cond_22
    array-length v1, p0

    const/16 v4, 0x10

    if-le v1, v4, :cond_2b

    const-string/jumbo v1, "array length must be no larger than 16"

    return-object v1

    :cond_2b
    aget v1, p0, v3

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_35

    const-string/jumbo v1, "times must start at 0.f"

    return-object v1

    :cond_35
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_42

    const-string/jumbo v1, "times must end at 1.f"

    return-object v1

    :cond_42
    const/4 v0, 0x1

    :goto_43
    array-length v1, p0

    if-ge v0, v1, :cond_6d

    aget v1, p0, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p0, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_68

    move v1, v2

    :goto_51
    if-nez v1, :cond_6a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "times not monotonic increasing, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_68
    move v1, v3

    goto :goto_51

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_6d
    if-eqz p2, :cond_96

    const/4 v0, 0x0

    :goto_70
    array-length v1, p1

    if-ge v0, v1, :cond_ca

    aget v1, p1, v0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_91

    move v1, v2

    :goto_7a
    if-nez v1, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for log scale cannot be positive, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_91
    move v1, v3

    goto :goto_7a

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_96
    const/4 v0, 0x0

    :goto_97
    array-length v1, p1

    if-ge v0, v1, :cond_ca

    aget v1, p1, v0

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_c3

    move v1, v2

    :goto_a1
    if-eqz v1, :cond_ae

    aget v1, p1, v0

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_c5

    move v1, v2

    :goto_aa
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c7

    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_c3
    move v1, v3

    goto :goto_a1

    :cond_c5
    move v1, v3

    goto :goto_aa

    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_ca
    return-object v6
.end method

.method private static checkCurveForErrorsAndThrowException([F[FZZ)V
    .registers 6

    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p3, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    return-void
.end method

.method private static checkValidVolumeAndThrowException(FZ)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_14

    :goto_9
    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dbfs volume must be 0.f or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v0, v1

    goto :goto_9

    :cond_16
    cmpl-float v2, p0, v2

    if-ltz v2, :cond_30

    move v2, v0

    :goto_1b
    if-eqz v2, :cond_27

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_32

    :goto_23
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move v2, v1

    goto :goto_1b

    :cond_32
    move v0, v1

    goto :goto_23

    :cond_34
    return-void
.end method

.method private static clampVolume([FZ)V
    .registers 8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_3d

    aget v1, p0, v0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_19

    move v1, v2

    :goto_12
    if-nez v1, :cond_16

    aput v4, p0, v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    move v1, v3

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    array-length v1, p0

    if-ge v0, v1, :cond_3d

    aget v1, p0, v0

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2d

    move v1, v2

    :goto_26
    if-nez v1, :cond_2f

    aput v4, p0, v0

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2d
    move v1, v3

    goto :goto_26

    :cond_2f
    aget v1, p0, v0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_3b

    move v1, v2

    :goto_36
    if-nez v1, :cond_2a

    aput v5, p0, v0

    goto :goto_2a

    :cond_3b
    move v1, v3

    goto :goto_36

    :cond_3d
    return-void
.end method

.method public static getMaximumCurvePoints()I
    .registers 1

    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_7

    return v2

    :cond_7
    if-ne p1, p0, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v4, v0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v3, v4, :cond_46

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v4, v0, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v3, v4, :cond_46

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v3, :cond_43

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v3, v0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v1, v3, :cond_44

    iget-wide v4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v6, v0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v1, v4, v6

    if-nez v1, :cond_44

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v3, v0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v1, v3, :cond_44

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v3, v0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object v2, v0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    :cond_43
    :goto_43
    return v1

    :cond_44
    move v1, v2

    goto :goto_43

    :cond_46
    move v1, v2

    goto :goto_43
.end method

.method getAllOptionFlags()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public getInterpolatorType()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public getOptionFlags()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTimes()[F
    .registers 2

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public getVolumes()[F
    .registers 2

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_1e

    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VolumeShaper.Configuration{mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_2f

    const-string/jumbo v0, "}"

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", mOptionFlags = 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mDurationMs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mInterpolatorType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mTimes[] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mVolumes[] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v1, :cond_41

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_2b
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    if-ge v0, v1, :cond_41

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_41
    return-void
.end method
