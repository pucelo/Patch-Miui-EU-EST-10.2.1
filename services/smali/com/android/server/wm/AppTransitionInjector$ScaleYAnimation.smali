.class Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleYAnimation"
.end annotation


# instance fields
.field private mFromY:F

.field private mPivotY:F

.field private mToY:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->getScaleFactor()F

    move-result v0

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_15

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1f

    :cond_15
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    :cond_1f
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2d

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v5, v1, v6, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_2c
.end method
