.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final mEntry:[I

.field private final mInputCount:I


# direct methods
.method public constructor <init>([I)V
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v7, "entry must not be null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v3, p1

    const/4 v0, 0x0

    :goto_e
    array-length v7, p1

    if-ge v0, v7, :cond_71

    aget v7, p1, v0

    invoke-static {v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    if-ge v3, v12, :cond_32

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Input %x had no output format length listed"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_32
    aget v4, p1, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v4, :cond_45

    add-int v7, v0, v2

    aget v6, p1, v7

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_45
    if-lez v4, :cond_6e

    if-ge v3, v4, :cond_6c

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6c
    add-int/2addr v0, v4

    sub-int/2addr v3, v4

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_71
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iput v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v1, :cond_18

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object v2, v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    :cond_18
    return v2
.end method

.method public getInputs()[I
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v2, v6, [I

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v4, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_b
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v6, v6

    if-ge v1, v6, :cond_65

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v0, v6, v1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v4, v11, :cond_2f

    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Input %x had no output format length listed"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_2f
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v6, v1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v1, 0x1

    if-lez v5, :cond_60

    if-ge v4, v5, :cond_5e

    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_5e
    add-int/2addr v1, v5

    sub-int/2addr v4, v5

    :cond_60
    aput v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_65
    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v6

    return-object v6
.end method

.method public getOutputs(I)[I
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v3, v6

    const/4 v0, 0x0

    :goto_6
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v6, v6

    if-ge v0, v6, :cond_73

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v1, v6, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    if-ge v3, v11, :cond_2a

    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Input %x had no output format length listed"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_2a
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v4, v6, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    if-lez v4, :cond_59

    if-ge v3, v4, :cond_59

    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_59
    if-ne v1, p1, :cond_70

    new-array v5, v4, [I

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v4, :cond_6b

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v7, v0, v2

    aget v6, v6, v7

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6b
    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v6

    return-object v6

    :cond_70
    add-int/2addr v0, v4

    sub-int/2addr v3, v4

    goto :goto_6

    :cond_73
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Input format %x was not one in #getInputs"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
