.class public Landroid/graphics/ColorSpace$Rgb$TransferParameters;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferParameters"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(DDDDD)V
    .registers 28

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v14, p9

    invoke-direct/range {v1 .. v15}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .registers 20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {p7, p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {p9, p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parameters cannot be NaN"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    const-wide/16 v2, 0x0

    cmpl-double v2, p7, v2

    if-ltz v2, :cond_67

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->ulp(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, p7, v2

    if-gtz v2, :cond_67

    const/4 v2, 0x1

    :goto_4b
    if-nez v2, :cond_69

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parameter d must be in the range [0..1], was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_67
    const/4 v2, 0x0

    goto :goto_4b

    :cond_69
    const-wide/16 v2, 0x0

    cmpl-double v2, p7, v2

    if-nez v2, :cond_84

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_7b

    const-wide/16 v2, 0x0

    cmpl-double v2, p13, v2

    if-nez v2, :cond_84

    :cond_7b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_84
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p7, v2

    if-ltz v2, :cond_99

    const-wide/16 v2, 0x0

    cmpl-double v2, p5, v2

    if-nez v2, :cond_99

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parameter c is zero, the transfer function is constant"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_99
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_a5

    const-wide/16 v2, 0x0

    cmpl-double v2, p13, v2

    if-nez v2, :cond_b4

    :cond_a5
    const-wide/16 v2, 0x0

    cmpl-double v2, p5, v2

    if-nez v2, :cond_b4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b4
    const-wide/16 v2, 0x0

    cmpg-double v2, p5, v2

    if-gez v2, :cond_c3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The transfer function must be increasing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c3
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_cf

    const-wide/16 v2, 0x0

    cmpg-double v2, p13, v2

    if-gez v2, :cond_d8

    :cond_cf
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The transfer function must be positive or increasing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d8
    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iput-wide p3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iput-wide p5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iput-wide p7, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iput-wide p9, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-wide/from16 v0, p11

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    move-wide/from16 v0, p13

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_20

    return v2

    :cond_20
    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2b

    return v2

    :cond_2b
    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_36

    return v2

    :cond_36
    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_41

    return v2

    :cond_41
    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4c

    return v2

    :cond_4c
    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_57

    return v2

    :cond_57
    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_62

    :goto_61
    return v1

    :cond_62
    move v1, v2

    goto :goto_61
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    return v0
.end method
