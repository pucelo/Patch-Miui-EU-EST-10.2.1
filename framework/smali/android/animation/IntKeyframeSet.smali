.class Landroid/animation/IntKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "IntKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$IntKeyframe;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/IntKeyframeSet;
    .registers 7

    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget-object v5, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Landroid/animation/Keyframe$IntKeyframe;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v4, :cond_1e

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1e
    new-instance v3, Landroid/animation/IntKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .registers 2

    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .registers 2

    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_57

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_31
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_42

    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    :goto_41
    return v9

    :cond_42
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_41

    :cond_57
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_b5

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_8f
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_a0

    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    :goto_9f
    return v9

    :cond_a0
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_9f

    :cond_b5
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    const/4 v0, 0x1

    :goto_be
    iget v9, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    if-ge v0, v9, :cond_119

    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_115

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v9

    sub-float v9, p1, v9

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v10

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v11

    sub-float/2addr v10, v11

    div-float v2, v9, v10

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    if-eqz v1, :cond_f5

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    :cond_f5
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_100

    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    :goto_ff
    return v9

    :cond_100
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_ff

    :cond_115
    move-object v7, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_119
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    return v9
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
