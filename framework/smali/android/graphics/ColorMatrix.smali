.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .registers 6

    const/16 v3, 0x14

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 5

    const/16 v2, 0x14

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    instance-of v2, p1, Landroid/graphics/ColorMatrix;

    if-nez v2, :cond_6

    return v4

    :cond_6
    check-cast p1, Landroid/graphics/ColorMatrix;

    iget-object v1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v0, 0x0

    :goto_b
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1d

    aget v2, v1, v0

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1a

    return v4

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public final getArray()[F
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .registers 2

    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .registers 2

    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .registers 4

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/16 v1, 0x12

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public set([F)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x14

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .registers 16

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/16 v10, 0x14

    if-eq p1, p0, :cond_8

    if-ne p2, p0, :cond_45

    :cond_8
    new-array v6, v10, [F

    :goto_a
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v10, :cond_79

    const/4 v2, 0x0

    move v4, v3

    :goto_14
    if-ge v2, v12, :cond_48

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v5, 0x0

    aget v7, v0, v7

    add-int/lit8 v8, v2, 0x0

    aget v8, v1, v8

    mul-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xa

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    add-int/lit8 v9, v2, 0xf

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_14

    :cond_45
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_a

    :cond_48
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v5, 0x0

    aget v7, v0, v7

    aget v8, v1, v12

    mul-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    const/16 v9, 0x9

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget v8, v0, v8

    const/16 v9, 0xe

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x3

    aget v8, v0, v8

    const/16 v9, 0x13

    aget v9, v1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v5, 0x4

    aget v8, v0, v8

    add-float/2addr v7, v8

    aput v7, v6, v4

    add-int/lit8 v5, v5, 0x5

    goto :goto_10

    :cond_79
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v6, v7, :cond_82

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v6, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy([FI[FII)V

    :cond_82
    return-void
.end method

.method public setRGB2YUV()V
    .registers 5

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const v1, 0x3e991687    # 0.299f

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x3f1645a2    # 0.587f

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0x3de978d5    # 0.114f

    const/4 v2, 0x2

    aput v1, v0, v2

    const v1, -0x41d335d2    # -0.16874f

    const/4 v2, 0x5

    aput v1, v0, v2

    const v1, -0x41566517    # -0.33126f

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const v1, -0x4129a177    # -0.41869f

    const/16 v2, 0xb

    aput v1, v0, v2

    const v1, -0x42597a25    # -0.08131f

    const/16 v2, 0xc

    aput v1, v0, v2

    return-void
.end method

.method public setRotate(IF)V
    .registers 14

    const/16 v10, 0xc

    const/4 v9, 0x6

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    float-to-double v4, p2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v2, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    packed-switch p1, :pswitch_data_66

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    :pswitch_28
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v5, v10

    aput v0, v4, v9

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x7

    aput v1, v4, v5

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    neg-float v5, v1

    const/16 v6, 0xb

    aput v5, v4, v6

    :goto_3c
    return-void

    :pswitch_3d
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v5, v10

    aput v0, v4, v8

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    neg-float v5, v1

    const/4 v6, 0x2

    aput v5, v4, v6

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v5, 0xa

    aput v1, v4, v5

    goto :goto_3c

    :pswitch_52
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, v5, v9

    aput v0, v4, v8

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x1

    aput v1, v4, v5

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    neg-float v5, v1

    const/4 v6, 0x5

    aput v5, v4, v6

    goto :goto_3c

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_28
        :pswitch_3d
        :pswitch_52
    .end packed-switch
.end method

.method public setSaturation(F)V
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p1

    const v5, 0x3e5a1cac    # 0.213f

    mul-float v2, v5, v3

    const v5, 0x3f370a3d    # 0.715f

    mul-float v1, v5, v3

    const v5, 0x3d9374bc    # 0.072f

    mul-float v0, v5, v3

    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v0, v4, v5

    const/4 v5, 0x5

    aput v2, v4, v5

    add-float v5, v1, p1

    const/4 v6, 0x6

    aput v5, v4, v6

    const/4 v5, 0x7

    aput v0, v4, v5

    const/16 v5, 0xa

    aput v2, v4, v5

    const/16 v5, 0xb

    aput v1, v4, v5

    add-float v5, v0, p1

    const/16 v6, 0xc

    aput v5, v4, v6

    return-void
.end method

.method public setScale(FFFF)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x13

    :goto_5
    if-lez v1, :cond_d

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_d
    aput p1, v0, v3

    const/4 v2, 0x6

    aput p2, v0, v2

    const/16 v2, 0xc

    aput p3, v0, v2

    const/16 v2, 0x12

    aput p4, v0, v2

    return-void
.end method

.method public setYUV2RGB()V
    .registers 5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const v1, 0x3fb374bc    # 1.402f

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v3, v0, v1

    const v1, -0x414fcce2    # -0.34414f

    const/4 v2, 0x6

    aput v1, v0, v2

    const v1, -0x40c92e1f    # -0.71414f

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0xa

    aput v3, v0, v1

    const v1, 0x3fe2d0e5    # 1.772f

    const/16 v2, 0xb

    aput v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v1, v0, v2

    return-void
.end method
