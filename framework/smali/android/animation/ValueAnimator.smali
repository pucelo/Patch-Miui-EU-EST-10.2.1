.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mAnimationEndRequested:Z

.field private mCurrentFraction:F

.field private mDuration:J

.field private mFirstFrameTime:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastFrameTime:J

.field private mOverallFraction:F

.field private mPauseTime:J

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mSelfPulse:Z

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mSuppressSelfPulseRequested:Z

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iput v1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private addAnimationCallback(J)V
    .registers 4

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private addOneShotCommitCallback()V
    .registers 2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static areAnimatorsEnabled()Z
    .registers 2

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private clampFraction(F)F
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    const/4 p1, 0x0

    :cond_6
    :goto_6
    return p1

    :cond_7
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_6
.end method

.method private endAnimation()V
    .registers 13

    const-wide/16 v10, 0x8

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v4, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1a

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_59

    :cond_1a
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    const/4 v1, 0x1

    :goto_1f
    if-eqz v1, :cond_2a

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_2a
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    if-eqz v1, :cond_5b

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_5b

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_49
    if-ge v0, v2, :cond_5b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v4, p0, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_59
    const/4 v1, 0x0

    goto :goto_1f

    :cond_5b
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v10, v11, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_6e
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .registers 1

    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private getCurrentIteration(F)I
    .registers 6

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_16

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_16

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    :cond_16
    double-to-int v2, v0

    return v2
.end method

.method private getCurrentIterationFraction(FZ)F
    .registers 6

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v1

    int-to-float v2, v1

    sub-float v0, p1, v2

    invoke-direct {p0, v1, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_15
    return v0
.end method

.method public static getDurationScale()F
    .registers 1

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .registers 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private isPulsingInternal()Z
    .registers 5

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private notifyStartListeners()V
    .registers 6

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_27
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .registers 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .registers 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .registers 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .registers 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .registers 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method private removeAnimationCallback()V
    .registers 2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static setDurationScale(F)V
    .registers 1

    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return-void
.end method

.method public static setFrameDelay(J)V
    .registers 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    return-void
.end method

.method private shouldPlayBackward(IZ)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_24

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_14

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    :cond_14
    if-eqz p2, :cond_1d

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_22

    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21

    :cond_24
    return p2
.end method

.method private start(Z)V
    .registers 15

    const/4 v12, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_17

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz p1, :cond_43

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_43

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_43

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6e

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v2, v1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_43
    :goto_43
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-direct {p0, v10, v11}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_61

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v12

    if-ltz v1, :cond_79

    :cond_61
    :goto_61
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_7e

    invoke-virtual {p0, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_43

    :cond_79
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v1, :cond_6d

    goto :goto_61

    :cond_7e
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_6d
.end method

.method private startAnimation()V
    .registers 7

    const-wide/16 v4, 0x8

    const/4 v2, 0x0

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v4, v5, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2f

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    :goto_27
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_2e
    return-void

    :cond_2f
    iput v2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_27
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateBasedOnPlayTime(JJZ)V
    .registers 19

    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-ltz v7, :cond_a

    cmp-long v7, p3, v8

    if-gez v7, :cond_13

    :cond_a
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Error: Play time should never be negative."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_13
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v7, :cond_4d

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v8, p1, v8

    long-to-int v4, v8

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v8, p3, v8

    long-to-int v5, v8

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eq v4, v5, :cond_4d

    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_4d

    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v6, :cond_4d

    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v7, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_4d
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_64

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v8, v10

    cmp-long v7, p1, v8

    if-ltz v7, :cond_64

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    :goto_63
    return-void

    :cond_64
    long-to-float v7, p1

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v8, v8

    div-float v2, v7, v8

    move/from16 v0, p5

    invoke-direct {p0, v2, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_63
.end method

.method animateBasedOnTime(J)Z
    .registers 16

    const/4 v1, 0x0

    iget-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v10, :cond_45

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_46

    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v10, p1, v10

    long-to-float v10, v10

    long-to-float v11, v8

    div-float v2, v10, v11

    :goto_17
    iget v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    float-to-int v10, v2

    float-to-int v11, v4

    if-le v10, v11, :cond_49

    const/4 v6, 0x1

    :goto_1e
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_4d

    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4b

    const/4 v5, 0x1

    :goto_2d
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_4f

    const/4 v1, 0x1

    :cond_34
    :goto_34
    invoke-direct {p0, v2}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v10

    iput v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v11, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v10, v11}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    :cond_45
    return v1

    :cond_46
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_49
    const/4 v6, 0x0

    goto :goto_1e

    :cond_4b
    const/4 v5, 0x0

    goto :goto_2d

    :cond_4d
    const/4 v5, 0x0

    goto :goto_2d

    :cond_4f
    if-eqz v6, :cond_70

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_70

    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v10, :cond_34

    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v3, 0x0

    :goto_60
    if-ge v3, v7, :cond_34

    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v10, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_70
    if-eqz v5, :cond_34

    const/4 v1, 0x1

    goto :goto_34
.end method

.method animateValue(F)V
    .registers 6

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_18

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_33

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v1, :cond_33

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    return-void
.end method

.method public canReverse()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_f

    new-instance v3, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v4, "Animators may only be run on Looper threads"

    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v3, :cond_14

    return-void

    :cond_14
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_43

    :cond_1c
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_43

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_27

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_27
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_33

    :cond_43
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .registers 12

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_17
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput v10, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iput v10, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v4, :cond_67

    array-length v3, v4

    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v3, :cond_67

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_67
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .registers 8

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v2, :cond_16

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_16
    return-void
.end method

.method public final doAnimationFrame(J)Z
    .registers 14

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_f

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v3, :cond_1a

    move-wide v6, p1

    :goto_d
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_f
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v3, :cond_23

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    const/4 v3, 0x0

    return v3

    :cond_1a
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v3, v6

    sget v6, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v3, v6

    float-to-long v6, v3

    add-long/2addr v6, p1

    goto :goto_d

    :cond_23
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v3, :cond_3b

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3b

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_3b
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_55

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_4f

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4f

    const/4 v3, 0x0

    return v3

    :cond_4f
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    :cond_55
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_78

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_75

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v3, v6

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v3, v6

    float-to-long v4, v3

    sub-long v6, p1, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_75
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    :cond_78
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    :cond_89
    return v2
.end method

.method public end()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2b

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    :cond_19
    :goto_19
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_24
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void

    :cond_2b
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_19

    :cond_33
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_24
.end method

.method public getAnimatedFraction()F
    .registers 2

    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_14

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v2
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v2
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayTime()J
    .registers 7

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v1, :cond_12

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    :cond_f
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_12
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_20

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2

    :cond_20
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_33

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_28
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    :cond_33
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    goto :goto_28
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .registers 7

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_8
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .registers 2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .registers 4

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_14

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_17
    return-void
.end method

.method isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .registers 5

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_12

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_12

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    :cond_12
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .registers 4

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public removeAllUpdateListeners()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_15
    return-void
.end method

.method public resume()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    :cond_27
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    return-void
.end method

.method public reverse()V
    .registers 10

    const/4 v8, 0x1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long v4, v6, v0

    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    :goto_21
    return-void

    :cond_22
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_30

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_21

    :cond_30
    invoke-direct {p0, v8}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_21
.end method

.method public setAllowRunningAsynchronously(Z)V
    .registers 2

    return-void
.end method

.method public setCurrentFraction(F)V
    .registers 10

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v1, v6

    mul-float/2addr v1, p1

    float-to-long v4, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :goto_1f
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v1}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void

    :cond_2b
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_1f
.end method

.method public setCurrentPlayTime(J)V
    .registers 10

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_12

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    :goto_e
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    return-void

    :cond_12
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_e
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_13
    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_22

    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1f
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_22
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1f
.end method

.method public varargs setIntValues([I)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_22

    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1f
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_22
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1f
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_4
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_23

    :cond_11
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, v4, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_20
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_23
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public setRepeatCount(I)V
    .registers 2

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    const-string/jumbo v0, "ValueAnimator"

    const-string/jumbo v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_11
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .registers 7

    array-length v1, p1

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1b

    aget-object v2, p1, v0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method skipToEndValue(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    const/4 v0, 0x0

    :cond_13
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void

    :cond_17
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method startWithoutPulsing(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_49

    const/4 v0, 0x0

    :goto_21
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_49
    return-object v1
.end method
