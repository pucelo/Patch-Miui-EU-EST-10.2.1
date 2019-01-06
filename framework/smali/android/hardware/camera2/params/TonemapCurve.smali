.class public final Landroid/hardware/camera2/params/TonemapCurve;
.super Ljava/lang/Object;
.source "TonemapCurve.java"


# static fields
.field public static final CHANNEL_BLUE:I = 0x2

.field public static final CHANNEL_GREEN:I = 0x1

.field public static final CHANNEL_RED:I = 0x0

.field public static final LEVEL_BLACK:F = 0.0f

.field public static final LEVEL_WHITE:F = 1.0f

.field private static final MIN_CURVE_LENGTH:I = 0x4

.field private static final OFFSET_POINT_IN:I = 0x0

.field private static final OFFSET_POINT_OUT:I = 0x1

.field public static final POINT_SIZE:I = 0x2

.field private static final TONEMAP_MIN_CURVE_POINTS:I = 0x2


# instance fields
.field private final mBlue:[F

.field private final mGreen:[F

.field private mHashCalculated:Z

.field private mHashCode:I

.field private final mRed:[F


# direct methods
.method public constructor <init>([F[F[F)V
    .registers 9

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    const-string/jumbo v0, "red must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "green must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "blue must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "red"

    invoke-static {p1, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    const-string/jumbo v0, "green"

    invoke-static {p2, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    const-string/jumbo v0, "blue"

    invoke-static {p3, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-static {p1, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    const-string/jumbo v0, "green"

    invoke-static {p2, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    const-string/jumbo v0, "blue"

    invoke-static {p3, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const-string/jumbo v0, "green"

    invoke-static {p2, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const-string/jumbo v0, "blue"

    invoke-static {p3, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-void
.end method

.method private static checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V
    .registers 6

    array-length v0, p0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size must be divisible by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method private static checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V
    .registers 6

    array-length v0, p0

    if-ge v0, p1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return-void
.end method

.method private static checkArgumentColorChannel(I)I
    .registers 3

    packed-switch p0, :pswitch_data_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private curveToString(I)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    array-length v5, v0

    div-int/lit8 v3, v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    if-ge v1, v3, :cond_39

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_14

    :cond_39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCurve(I)[F
    .registers 4

    packed-switch p1, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_c
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    return-object v0

    :pswitch_f
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    return-object v0

    :pswitch_12
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public copyColorCurve(I[FI)V
    .registers 7

    const-string/jumbo v1, "offset must not be negative"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string/jumbo v1, "destination must not be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p2

    add-int/2addr v1, p3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1f

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "destination too small to fit elements"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/TonemapCurve;

    if-eqz v2, :cond_2c

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/TonemapCurve;

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v3, v0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v3, v0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    iget-object v2, v0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    :cond_2b
    return v1

    :cond_2c
    return v1
.end method

.method public getPoint(II)Landroid/graphics/PointF;
    .registers 8

    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    if-ltz p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v3

    if-lt p2, v3, :cond_14

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "index out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v1, v0, v3

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v0, v3

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public getPointCount(I)I
    .registers 3

    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0

    :cond_8
    const/4 v0, 0x3

    new-array v0, v0, [[F

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    iput-boolean v3, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TonemapCurve{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
