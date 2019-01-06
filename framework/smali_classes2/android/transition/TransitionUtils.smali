.class public Landroid/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static MAX_IMAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x100000

    sput v0, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 17

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p1, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v10, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p1, v6, v2, p0}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5d
    sub-int v10, v7, v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v10, v1, v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual {v3, v5, v8, v7, v1}, Landroid/widget/ImageView;->layout(IIII)V

    return-object v3
.end method

.method public static createDrawableBitmap(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 16

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v11, :cond_c

    if-gtz v5, :cond_e

    :cond_c
    const/4 v12, 0x0

    return-object v12

    :cond_e
    sget v12, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v12, v12

    mul-int v13, v11, v5

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2c

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_2c

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12

    :cond_2c
    int-to-float v12, v11

    mul-float/2addr v12, v9

    float-to-int v1, v12

    int-to-float v12, v5

    mul-float/2addr v12, v9

    float-to-int v0, v12

    const-string/jumbo v12, "TransitionUtils"

    invoke-static {v12, p1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13, v11, v5}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v7, v11, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v6, v10, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v3}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-static {v7, v11, v5}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12
.end method

.method public static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1c

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_15

    :cond_14
    return-object v8

    :cond_15
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v3, :cond_6e

    if-lez v2, :cond_6e

    sget v7, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v7, v7

    mul-int v8, v3, v2

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v3

    mul-float/2addr v7, v6

    float-to-int v3, v7

    int-to-float v7, v2

    mul-float/2addr v7, v6

    float-to-int v2, v7

    iget v7, p2, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    neg-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const-string/jumbo v7, "TransitionUtils"

    invoke-static {v7, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v5

    invoke-virtual {v5, v9, v9, v3, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v5, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v5, v3, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/DisplayListCanvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5, v4}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-static {v5, v3, v2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6e
    if-eqz v0, :cond_77

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_77
    return-object v1
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 5

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static varargs mergeTransitions([Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_4
    array-length v4, p0

    if-ge v1, v4, :cond_11

    aget-object v4, p0, v1

    if-eqz v4, :cond_e

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    if-nez v0, :cond_14

    return-object v5

    :cond_14
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    aget-object v4, p0, v2

    return-object v4

    :cond_1a
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    :goto_20
    array-length v4, p0

    if-ge v1, v4, :cond_2f

    aget-object v4, p0, v1

    if-eqz v4, :cond_2c

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2f
    return-object v3
.end method
