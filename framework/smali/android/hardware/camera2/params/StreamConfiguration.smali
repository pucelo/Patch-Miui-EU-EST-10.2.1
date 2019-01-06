.class public final Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mInput:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    const-string/jumbo v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    const-string/jumbo v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return v2

    :cond_5
    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    instance-of v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v3, :cond_2c

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2a

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    iget-boolean v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_28

    :goto_27
    return v1

    :cond_28
    move v1, v2

    goto :goto_27

    :cond_2a
    move v1, v2

    goto :goto_27

    :cond_2c
    return v2
.end method

.method public final getFormat()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .registers 4

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    aput v3, v2, v1

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    aput v3, v2, v0

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    const/4 v4, 0x2

    aput v3, v2, v4

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-eqz v3, :cond_1e

    :goto_16
    const/4 v1, 0x3

    aput v0, v2, v1

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    :cond_1e
    move v0, v1

    goto :goto_16
.end method

.method public isInput()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return v0
.end method

.method public isOutput()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
