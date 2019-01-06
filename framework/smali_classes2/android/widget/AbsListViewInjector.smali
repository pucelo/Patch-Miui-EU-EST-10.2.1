.class public Landroid/widget/AbsListViewInjector;
.super Ljava/lang/Object;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;,
        Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static edgeReached(Landroid/widget/AbsListView;I)Z
    .registers 12

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_75

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    if-nez v3, :cond_4f

    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-lt v4, v7, :cond_4d

    const/4 v0, 0x1

    :goto_28
    add-int v7, v3, v2

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v7, v9, :cond_53

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    if-gt v5, v7, :cond_51

    const/4 v1, 0x1

    :goto_38
    if-eqz v1, :cond_55

    move v7, v0

    :goto_3b
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v7, :cond_57

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-nez v7, :cond_47

    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    :cond_47
    :goto_47
    if-eqz v0, :cond_71

    if-lez p1, :cond_71

    :cond_4b
    const/4 v7, 0x1

    return v7

    :cond_4d
    const/4 v0, 0x0

    goto :goto_28

    :cond_4f
    const/4 v0, 0x0

    goto :goto_28

    :cond_51
    const/4 v1, 0x0

    goto :goto_38

    :cond_53
    const/4 v1, 0x0

    goto :goto_38

    :cond_55
    move v7, v8

    goto :goto_3b

    :cond_57
    if-eqz v0, :cond_64

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v7, :cond_61

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-ge p1, v7, :cond_47

    :cond_61
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_47

    :cond_64
    if-eqz v1, :cond_47

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v7, :cond_6e

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-le p1, v7, :cond_47

    :cond_6e
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_47

    :cond_71
    if-eqz v1, :cond_75

    if-ltz p1, :cond_4b

    :cond_75
    return v8
.end method

.method public static getPanSpeed(Landroid/widget/AbsListView;I)I
    .registers 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_13

    iget v1, p0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v0, p1, v1

    :goto_12
    return v0

    :cond_13
    iget v2, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1f

    :goto_1c
    sub-int v0, v2, v1

    goto :goto_12

    :cond_1f
    iget v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1c
.end method

.method public static initOnTouchDown(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    iput v1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    return-void
.end method

.method private static isAnimating(Landroid/widget/AbsListView;)Z
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static needFinishActionMode(Landroid/widget/AbsListView;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static onRenderTick(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0, p1, v2, v2}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    return-void

    :cond_14
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    if-nez v0, :cond_22

    iget v0, p0, Landroid/widget/AbsListView;->mScaleY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_29

    :cond_22
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, p1, v0, v2}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    :cond_29
    return-void

    :cond_2a
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, v0}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    iput v2, p0, Landroid/widget/AbsListView;->mInertia:I

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    int-to-float v0, v0

    const v1, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    if-nez v0, :cond_3a

    iput v3, p0, Landroid/widget/AbsListView;->mScaleY:F

    goto :goto_3a
.end method

.method public static resetScale(Landroid/widget/AbsListView;)V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/AbsListView;->mScaleY:F

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method private static setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V
    .registers 16

    if-nez p2, :cond_11

    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void

    :cond_11
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v6, v8, v10

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v5, :cond_3b

    if-gez p2, :cond_3b

    neg-double v2, v2

    :cond_3b
    double-to-float v5, v2

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v4, v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    if-gtz p2, :cond_4f

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v5, :cond_d9

    :cond_4f
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    :goto_52
    if-eqz p3, :cond_e8

    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6a

    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_6a
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_73

    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_73
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v4, v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v8, 0x190

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;

    invoke-direct {v5}, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/widget/AbsListViewInjector$1;

    invoke-direct {v5, p0}, Landroid/widget/AbsListViewInjector$1;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_e2

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v5, v9

    const/4 v8, 0x1

    aput v4, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;

    invoke-direct {v5}, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/widget/AbsListViewInjector$2;

    invoke-direct {v5, p0}, Landroid/widget/AbsListViewInjector$2;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_d3
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :goto_d8
    return-void

    :cond_d9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    goto/16 :goto_52

    :cond_e2
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_d3

    :cond_e8
    iget v5, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p1, v9, v4, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iput v4, p0, Landroid/widget/AbsListView;->mScaleY:F

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_d8
.end method

.method public static setListScaleIfNeeded(Landroid/widget/AbsListView;I)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {p0, p1}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v4, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    sub-int v1, p1, v4

    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_19
    iget v4, p0, Landroid/widget/AbsListView;->mInertia:I

    if-eqz v4, :cond_1f

    :goto_1d
    and-int/2addr v2, v0

    return v2

    :cond_1f
    move v2, v3

    goto :goto_1d

    :cond_21
    return v3
.end method
