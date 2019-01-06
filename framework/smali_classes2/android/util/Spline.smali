.class public abstract Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Spline$LinearSpline;,
        Landroid/util/Spline$MonotoneCubicSpline;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinearSpline([F[F)Landroid/util/Spline;
    .registers 3

    new-instance v0, Landroid/util/Spline$LinearSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .registers 3

    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createSpline([F[F)Landroid/util/Spline;
    .registers 4

    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The control points must all have strictly increasing X values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0
.end method

.method private static isMonotonic([F)Z
    .registers 7

    const/4 v5, 0x0

    if-eqz p0, :cond_7

    array-length v3, p0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_10

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "There must be at least two control points."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    aget v2, p0, v5

    const/4 v1, 0x1

    :goto_13
    array-length v3, p0

    if-ge v1, v3, :cond_21

    aget v0, p0, v1

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1d

    return v5

    :cond_1d
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/4 v3, 0x1

    return v3
.end method

.method private static isStrictlyIncreasing([F)Z
    .registers 7

    const/4 v5, 0x0

    if-eqz p0, :cond_7

    array-length v3, p0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_10

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "There must be at least two control points."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    aget v2, p0, v5

    const/4 v1, 0x1

    :goto_13
    array-length v3, p0

    if-ge v1, v3, :cond_21

    aget v0, p0, v1

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1d

    return v5

    :cond_1d
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public abstract interpolate(F)F
.end method
