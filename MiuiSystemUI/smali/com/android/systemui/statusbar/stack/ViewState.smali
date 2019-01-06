.class public Lcom/android/systemui/statusbar/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/ViewState$1;,
        Lcom/android/systemui/statusbar/stack/ViewState$2;,
        Lcom/android/systemui/statusbar/stack/ViewState$3;
    }
.end annotation


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public paddingBottom:I

.field public paddingTop:I

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 6

    move-wide v0, p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-wide v0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const v1, 0x7f0a02ee

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0a02ec

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const v1, 0x7f0a02f1

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0a02ef

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1

    const v0, 0x7f0a02ee

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    const v14, 0x7f0a0027

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0a0026

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    return-void

    :cond_0
    const v14, 0x7f0a0028

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0027

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0026

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v14, 0x7f0a0028

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0027

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0026

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 12

    const v8, 0x7f0a01fa

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const v8, 0x7f0a01f9

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    return-void

    :cond_0
    const v8, 0x7f0a01fb

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$9;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$9;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v8, v9, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    :cond_1
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$10;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$10;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v8, 0x7f0a01fb

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0a01fa

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0a01f9

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 12

    const v8, 0x7f0a01fd

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const v8, 0x7f0a01fc

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    return-void

    :cond_0
    const v8, 0x7f0a01fe

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$7;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v8, v9, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    :cond_1
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$8;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$8;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v8, 0x7f0a01fe

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0a01fd

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0a01fc

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22

    const v18, 0x7f0a02ea

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    const v18, 0x7f0a02e9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    return-void

    :cond_0
    const v18, 0x7f0a02eb

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02ea

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02e9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v18, 0x7f0a02eb

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02ea

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02e9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22

    const v18, 0x7f0a02ed

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    const v18, 0x7f0a02ec

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    return-void

    :cond_0
    const v18, 0x7f0a02ee

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_2

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02ed

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02ec

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$11;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v18, 0x7f0a02ee

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02ed

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a02ec

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 20

    const v15, 0x7f0a02f0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v15, 0x7f0a02ef

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v5

    if-nez v15, :cond_0

    return-void

    :cond_0
    const v15, 0x7f0a02f1

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v15, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v15, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float v12, v5, v15

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float v8, v15, v12

    const/4 v15, 0x0

    aget-object v15, v14, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v8, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x7f0a02f0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x7f0a02ef

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v13, 0x0

    :goto_0
    sget-object v15, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v13, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v15, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v15, Lcom/android/systemui/statusbar/stack/ViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v15, 0x7f0a02f1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x7f0a02f0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x7f0a02ef

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v13

    goto/16 :goto_0
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    if-nez v3, :cond_1

    cmpl-float v4, v0, v5

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    instance-of v4, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v1, v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    if-eq v4, v5, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    if-eq v4, v5, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_8
    if-eqz v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_9
    return-void

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const v4, 0x7f0a02eb

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    const v4, 0x7f0a02ee

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_3

    :cond_7
    const v4, 0x7f0a01fe

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    const v4, 0x7f0a01fb

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_5

    :cond_9
    const v4, 0x7f0a02f1

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_6

    :cond_a
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_7

    :cond_b
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_8

    :cond_c
    const v4, 0x7f0a0028

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_9
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    return-void

    :cond_0
    const v20, 0x7f0a02eb

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    :cond_1
    :goto_0
    const v20, 0x7f0a02ee

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    :cond_2
    :goto_1
    const v20, 0x7f0a01fe

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_3
    :goto_2
    const v20, 0x7f0a01fb

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_4
    :goto_3
    const v20, 0x7f0a02f1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    :cond_5
    :goto_4
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    :cond_6
    :goto_5
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_8

    if-eqz v19, :cond_14

    :cond_8
    const/4 v14, 0x1

    :goto_7
    const v20, 0x7f0a0028

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    :cond_9
    :goto_8
    if-eqz v14, :cond_1a

    const/16 v18, 0x4

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableView;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v20, p1

    check-cast v20, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_b

    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_6

    :cond_13
    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-nez v20, :cond_17

    const/4 v13, 0x1

    :goto_a
    if-nez v14, :cond_18

    xor-int/lit8 v20, v13, 0x1

    if-eqz v20, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v17

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v15

    if-eqz v17, :cond_19

    const/16 v16, 0x2

    :goto_c
    move/from16 v0, v16

    if-eq v15, v0, :cond_16

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    :cond_17
    const/4 v13, 0x0

    goto :goto_a

    :cond_18
    const/16 v17, 0x0

    goto :goto_b

    :cond_19
    const/16 v16, 0x0

    goto :goto_c

    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_9
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f0a02eb

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const v1, 0x7f0a02ee

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const v1, 0x7f0a02f1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const v1, 0x7f0a0028

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 1

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f0a02eb

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f0a02ee

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7f0a02f1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const v0, 0x7f0a0028

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
