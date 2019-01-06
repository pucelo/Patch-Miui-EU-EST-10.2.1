.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .registers 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    :goto_5
    return p0

    :cond_6
    neg-float p0, p0

    goto :goto_5
.end method

.method public static acos(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static addOrThrow(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_3

    return p0

    :cond_3
    if-lez p1, :cond_e

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_e

    add-int v0, p0, p1

    return v0

    :cond_e
    if-gez p1, :cond_18

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_18

    add-int v0, p0, p1

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Addition overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asin(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .registers 6

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method public static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static constrain(JJJ)J
    .registers 8

    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    :goto_4
    return-wide p2

    :cond_5
    cmp-long v0, p0, p4

    if-lez v0, :cond_b

    move-wide p2, p4

    goto :goto_4

    :cond_b
    move-wide p2, p0

    goto :goto_4
.end method

.method public static cross(FFFF)F
    .registers 6

    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static degrees(F)F
    .registers 2

    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dist(FFFF)F
    .registers 10

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(FFFFFF)F
    .registers 12

    sub-float v0, p3, p0

    sub-float v1, p4, p1

    sub-float v2, p5, p2

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public static dot(FFFF)F
    .registers 6

    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static exp(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lerp(FFF)F
    .registers 4

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerpDeg(FFF)F
    .registers 7

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v1, p1, p0

    add-float/2addr v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    sub-float v0, v1, v3

    mul-float v1, v0, p2

    add-float/2addr v1, p0

    return v1
.end method

.method public static log(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FF)F
    .registers 6

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FFF)F
    .registers 5

    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static map(FFFFF)F
    .registers 8

    sub-float v0, p3, p2

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FF)F
    .registers 3

    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    :goto_4
    return p0

    :cond_5
    move p0, p1

    goto :goto_4
.end method

.method public static max(FFF)F
    .registers 4

    cmpl-float v0, p0, p1

    if-lez v0, :cond_a

    cmpl-float v0, p0, p2

    if-lez v0, :cond_9

    move p2, p0

    :cond_9
    :goto_9
    return p2

    :cond_a
    cmpl-float v0, p1, p2

    if-lez v0, :cond_9

    move p2, p1

    goto :goto_9
.end method

.method public static max(II)F
    .registers 3

    if-le p0, p1, :cond_4

    :goto_2
    int-to-float v0, p0

    return v0

    :cond_4
    move p0, p1

    goto :goto_2
.end method

.method public static max(III)F
    .registers 4

    if-le p0, p1, :cond_7

    if-le p0, p2, :cond_5

    move p2, p0

    :cond_5
    :goto_5
    int-to-float v0, p2

    return v0

    :cond_7
    if-le p1, p2, :cond_5

    move p2, p1

    goto :goto_5
.end method

.method public static min(FF)F
    .registers 3

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p0

    :cond_5
    move p0, p1

    goto :goto_4
.end method

.method public static min(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_a

    cmpg-float v0, p0, p2

    if-gez v0, :cond_9

    move p2, p0

    :cond_9
    :goto_9
    return p2

    :cond_a
    cmpg-float v0, p1, p2

    if-gez v0, :cond_9

    move p2, p1

    goto :goto_9
.end method

.method public static min(II)F
    .registers 3

    if-ge p0, p1, :cond_4

    :goto_2
    int-to-float v0, p0

    return v0

    :cond_4
    move p0, p1

    goto :goto_2
.end method

.method public static min(III)F
    .registers 4

    if-ge p0, p1, :cond_7

    if-ge p0, p2, :cond_5

    move p2, p0

    :cond_5
    :goto_5
    int-to-float v0, p2

    return v0

    :cond_7
    if-ge p1, p2, :cond_5

    move p2, p1

    goto :goto_5
.end method

.method public static norm(FFF)F
    .registers 5

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static pow(FF)F
    .registers 6

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static radians(F)F
    .registers 2

    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static sq(F)F
    .registers 2

    mul-float v0, p0, p0

    return v0
.end method

.method public static tan(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
