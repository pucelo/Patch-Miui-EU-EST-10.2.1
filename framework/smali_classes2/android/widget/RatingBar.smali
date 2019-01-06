.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    sget-object v4, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-boolean v4, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    xor-int/lit8 v4, v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-lez v1, :cond_38

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_38

    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    :cond_38
    cmpl-float v4, v3, v7

    if-ltz v4, :cond_4c

    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    :goto_3f
    cmpl-float v4, v2, v7

    if-ltz v4, :cond_46

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_46
    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    return-void

    :cond_4c
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_3f
.end method

.method private getProgressPerStar()F
    .registers 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-lez v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_11
    return v1
.end method

.method private updateSecondaryProgress(I)V
    .registers 10

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_17

    int-to-float v3, p1

    div-float v0, v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    :cond_17
    return-void
.end method


# virtual methods
.method canUserSetProgress()Z
    .registers 2

    invoke-super {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method dispatchRatingChange(Z)V
    .registers 4

    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    :cond_d
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 2

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .registers 2

    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/RatingBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_e
    return-void
.end method

.method onKeyChange()V
    .registers 2

    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    iget v1, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    if-lez v1, :cond_1a

    iget v1, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int v0, v1, v2

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZI)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    invoke-direct {p0, p3}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    if-nez p2, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    :cond_c
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    return-void
.end method

.method onStopTrackingTouch()V
    .registers 3

    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    :cond_f
    return-void
.end method

.method public setIsIndicator(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    if-eqz p1, :cond_c

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(I)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(I)V

    goto :goto_b
.end method

.method public declared-synchronized setMax(I)V
    .registers 3

    monitor-enter p0

    if-gtz p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNumStars(I)V
    .registers 2

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    return-void
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-void
.end method

.method public setRating(F)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    return-void
.end method

.method public setStepSize(F)V
    .registers 6

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_6

    return-void

    :cond_6
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v2, v2

    div-float v0, v2, p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    return-void
.end method
