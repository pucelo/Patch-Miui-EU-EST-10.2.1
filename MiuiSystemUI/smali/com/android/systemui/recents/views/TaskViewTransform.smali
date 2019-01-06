.class public Lcom/android/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewTransform$1;
    }
.end annotation


# static fields
.field public static final LTRB:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public dimAlpha:F

.field public rect:Landroid/graphics/RectF;

.field public scale:F

.field public translationZ:F

.field public viewOutlineAlpha:F

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform$1;

    const-class v1, Landroid/graphics/Rect;

    const-string/jumbo v2, "leftTopRightBottom"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public static reset(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipRight(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->setLeftTopRightBottom(IIII)V

    return-void
.end method


# virtual methods
.method public applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            "Z)V"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/AnimationProps;->isImmediate()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/android/systemui/recents/views/TaskView;->mIsScollAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->setLeftTopRightBottom(IIII)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v5

    aput v5, v4, v7

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    aput v5, v4, v8

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcom/android/systemui/recents/views/TaskView;->mIsScollAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v5

    aput v5, v4, v7

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    aput v5, v4, v8

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/systemui/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    sget-object v5, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-array v6, v9, [Landroid/graphics/Rect;

    aput-object v1, v6, v7

    aput-object v2, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget-boolean v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public fillIn(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public hasAlphaChangedFrom(F)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRectChangedFrom(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScaleChangedFrom(F)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " V: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
