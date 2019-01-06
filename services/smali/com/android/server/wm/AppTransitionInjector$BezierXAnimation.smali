.class Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BezierXAnimation"
.end annotation


# instance fields
.field private mEndX:F

.field private mFromX:F

.field private mInertiaX:F

.field private mPivotX:F

.field private mStartX:F

.field private mToX:F

.field private mWidth:I


# direct methods
.method public constructor <init>(FFFFFLandroid/graphics/Point;I)V
    .registers 14

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mStartX:F

    iput p5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mEndX:F

    float-to-double v0, p4

    iget v2, p6, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mInertiaX:F

    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mToX:F

    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mPivotX:F

    iput p7, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mWidth:I

    return-void
.end method

.method public constructor <init>(FFFFLandroid/graphics/Point;I)V
    .registers 15

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;-><init>(FFFFFLandroid/graphics/Point;I)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 16

    const/high16 v12, 0x40000000    # 2.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->getScaleFactor()F

    move-result v0

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_19

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mToX:F

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_23

    :cond_19
    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mToX:F

    iget v6, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v1, v4, v5

    :cond_23
    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mPivotX:F

    cmpl-float v4, v4, v11

    if-nez v4, :cond_5f

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_30
    sub-float v4, v10, p1

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mStartX:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mEndX:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-float v6, v12, p1

    sub-float v7, v10, p1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mInertiaX:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    add-double v2, v4, v6

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    double-to-float v5, v2

    iget v6, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    div-float/2addr v6, v12

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_5f
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mPivotX:F

    mul-float/2addr v5, v0

    invoke-virtual {v4, v1, v10, v5, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_30
.end method
