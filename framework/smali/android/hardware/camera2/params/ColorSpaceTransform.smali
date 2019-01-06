.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "ColorSpaceTransform.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final COUNT:I = 0x9

.field private static final COUNT_INT:I = 0x12

.field private static final OFFSET_DENOMINATOR:I = 0x1

.field private static final OFFSET_NUMERATOR:I = 0x0

.field private static final RATIONAL_SIZE:I = 0x2

.field private static final ROWS:I = 0x3


# instance fields
.field private final mElements:[I


# direct methods
.method public constructor <init>([I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "elements must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_17

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "elements must be 18 length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    const/4 v0, 0x0

    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3c
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    return-void
.end method

.method public constructor <init>([Landroid/util/Rational;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "elements must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_17

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "elements must be 9 length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    const/16 v1, 0x12

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    const/4 v0, 0x0

    :goto_1e
    array-length v1, p1

    if-ge v0, v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "element["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_5e
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v4, v9, :cond_4d

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v9, :cond_3c

    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v2, 0x0

    aget v3, v6, v7

    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v2, 0x1

    aget v1, v6, v7

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v0, v8, :cond_37

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_15

    :cond_3c
    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v8, :cond_4a

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_4d
    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public copyElements([II)V
    .registers 7

    const/16 v3, 0x12

    const-string/jumbo v1, "offset must not be negative"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string/jumbo v1, "destination must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, v3, :cond_1b

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "destination too small to fit elements"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v3, :cond_29

    add-int v1, v0, p2

    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v2, v2, v0

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_29
    return-void
.end method

.method public copyElements([Landroid/util/Rational;I)V
    .registers 10

    const/16 v6, 0x9

    const-string/jumbo v4, "offset must not be negative"

    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string/jumbo v4, "destination must not be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, p2

    if-ge v4, v6, :cond_1b

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v5, "destination too small to fit elements"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    if-ge v1, v6, :cond_39

    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x0

    aget v3, v4, v5

    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    add-int v4, v1, p2

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, v3, v0}, Landroid/util/Rational;-><init>(II)V

    aput-object v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1d

    :cond_39
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_5

    return v11

    :cond_5
    if-ne p0, p1, :cond_8

    return v12

    :cond_8
    instance-of v9, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-eqz v9, :cond_44

    move-object v6, p1

    check-cast v6, Landroid/hardware/camera2/params/ColorSpaceTransform;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    const/16 v9, 0x9

    if-ge v2, v9, :cond_43

    iget-object v9, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v10, v3, 0x0

    aget v4, v9, v10

    iget-object v9, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v10, v3, 0x1

    aget v0, v9, v10

    iget-object v9, v6, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v10, v3, 0x0

    aget v5, v9, v10

    iget-object v9, v6, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v10, v3, 0x1

    aget v1, v9, v10

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v4, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v5, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    return v11

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_11

    :cond_43
    return v12

    :cond_44
    return v11
.end method

.method public getElement(II)Landroid/util/Rational;
    .registers 7

    const/4 v2, 0x3

    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_e

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "column out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    if-ltz p2, :cond_12

    if-lt p2, v2, :cond_1b

    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "row out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v3, p2, 0x3

    add-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v1, v2, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v3, p2, 0x3

    add-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v0, v2, v3

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v1, v0}, Landroid/util/Rational;-><init>(II)V

    return-object v2
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "ColorSpaceTransform%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
