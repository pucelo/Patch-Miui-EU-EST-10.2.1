.class public Landroid/filterfw/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .registers 5

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1d

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1d

    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1d

    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public distanceTo(Landroid/filterfw/geometry/Point;)F
    .registers 3

    invoke-virtual {p1, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public length()F
    .registers 5

    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v0, v0

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public minus(FF)Landroid/filterfw/geometry/Point;
    .registers 6

    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    sub-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .registers 4

    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->minus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public mult(FF)Landroid/filterfw/geometry/Point;
    .registers 6

    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public normalize()Landroid/filterfw/geometry/Point;
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public plus(FF)Landroid/filterfw/geometry/Point;
    .registers 6

    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    add-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    add-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .registers 4

    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public rotated(F)Landroid/filterfw/geometry/Point;
    .registers 10

    new-instance v0, Landroid/filterfw/geometry/Point;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v6, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public rotated90(I)Landroid/filterfw/geometry/Point;
    .registers 7

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_d

    move v3, v1

    move v1, v2

    neg-float v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v4
.end method

.method public rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public scaledTo(F)Landroid/filterfw/geometry/Point;
    .registers 3

    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public set(FF)V
    .registers 3

    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    return-void
.end method

.method public times(F)Landroid/filterfw/geometry/Point;
    .registers 5

    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
