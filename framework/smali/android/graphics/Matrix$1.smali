.class final Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(F)Z
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(FFF)Z
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FFFF)Z
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(F)Z
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FFFF)Z
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .registers 7

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setRotate(F)V
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setRotate(FFF)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setScale(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setScale(FFFF)V
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSinCos(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSkew(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSkew(FFFF)V
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setTranslate(FF)V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setValues([F)V
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method
