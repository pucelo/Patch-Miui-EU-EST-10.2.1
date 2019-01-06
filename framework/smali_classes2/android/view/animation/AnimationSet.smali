.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mFlags:I

.field private mHasAlpha:Z

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x10

    invoke-direct {p0, v2, v1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_71

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_3d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_4a
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_57

    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_57
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_64

    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_64
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_71

    iget v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    return-void
.end method

.method private setFlag(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :goto_7
    return-void

    :cond_8
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_7
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .registers 11

    const/4 v8, 0x1

    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_42

    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1b
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_44

    const/4 v0, 0x1

    :goto_22
    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_30
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_46

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    :goto_3f
    iput-boolean v8, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    return-void

    :cond_42
    const/4 v1, 0x0

    goto :goto_d

    :cond_44
    const/4 v0, 0x0

    goto :goto_22

    :cond_46
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_61

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_3f

    :cond_61
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v4, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    goto :goto_3f
.end method

.method protected bridge synthetic clone()Landroid/view/animation/Animation;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Landroid/view/animation/AnimationSet;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_31

    iget-object v5, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .registers 9

    const-wide/16 v4, 0x0

    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    :goto_c
    if-ltz v6, :cond_20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    cmp-long v7, v2, v4

    if-lez v7, :cond_1d

    move-wide v4, v2

    :cond_1d
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_20
    return-wide v4
.end method

.method public getAnimations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()J
    .registers 9

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    iget v6, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_16

    const/4 v4, 0x1

    :goto_11
    if-eqz v4, :cond_18

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    :cond_15
    return-wide v2

    :cond_16
    const/4 v4, 0x0

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    :goto_19
    if-ge v5, v1, :cond_15

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_19
.end method

.method public getStartTime()J
    .registers 9

    const-wide v4, 0x7fffffffffffffffL

    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_21

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    return-wide v4
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 13

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    add-int/lit8 v4, v2, -0x1

    :goto_12
    if-ltz v4, :cond_3f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v8

    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v8

    if-nez v8, :cond_39

    :goto_27
    invoke-virtual {p3, v7}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    if-nez v6, :cond_3b

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v6

    :goto_30
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-eqz v8, :cond_3d

    :goto_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    :cond_39
    const/4 v5, 0x1

    goto :goto_27

    :cond_3b
    const/4 v6, 0x1

    goto :goto_30

    :cond_3d
    const/4 v3, 0x0

    goto :goto_36

    :cond_3f
    if-eqz v6, :cond_53

    iget-boolean v8, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_53

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v8, :cond_50

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v8, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_50
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    :cond_53
    iget-boolean v8, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v3, v8, :cond_62

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v8, :cond_60

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v8, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_60
    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    :cond_62
    return v5
.end method

.method public hasAlpha()Z
    .registers 6

    const/4 v4, 0x0

    iget-boolean v3, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v3, :cond_23

    iput-boolean v4, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v4, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    :cond_23
    iget-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v3

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public initialize(IIII)V
    .registers 33

    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x20

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f3

    const/4 v7, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f6

    const/4 v11, 0x1

    :goto_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f9

    const/4 v13, 0x1

    :goto_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x4

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_fc

    const/16 v19, 0x1

    :goto_48
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x10

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_100

    const/16 v20, 0x1

    :goto_5a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_104

    const/16 v21, 0x1

    :goto_6c
    if-eqz v20, :cond_71

    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    :cond_71
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object/from16 v24, v0

    if-eqz v21, :cond_108

    if-eqz v24, :cond_a8

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v6, :cond_b2

    :cond_a8
    new-array v0, v6, [J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    :cond_b2
    :goto_b2
    const/4 v14, 0x0

    :goto_b3
    if-ge v14, v6, :cond_115

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    if-eqz v7, :cond_c0

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_c0
    if-eqz v11, :cond_c5

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_c5
    if-eqz v13, :cond_ca

    invoke-virtual {v4, v12}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    :cond_ca
    if-eqz v19, :cond_d1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_d1
    if-eqz v20, :cond_d6

    invoke-virtual {v4, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_d6
    if-eqz v21, :cond_e5

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v16

    add-long v26, v16, v22

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    aput-wide v16, v24, v14

    :cond_e5
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_b3

    :cond_f3
    const/4 v7, 0x0

    goto/16 :goto_14

    :cond_f6
    const/4 v11, 0x0

    goto/16 :goto_25

    :cond_f9
    const/4 v13, 0x0

    goto/16 :goto_36

    :cond_fc
    const/16 v19, 0x0

    goto/16 :goto_48

    :cond_100
    const/16 v20, 0x0

    goto/16 :goto_5a

    :cond_104
    const/16 v21, 0x0

    goto/16 :goto_6c

    :cond_108
    if-eqz v24, :cond_b2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    const/16 v24, 0x0

    goto :goto_b2

    :cond_115
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .registers 19

    iget-object v8, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float v10, p1

    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p3

    int-to-float v12, v0

    move/from16 v0, p4

    int-to-float v13, v0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v8, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v10, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz v10, :cond_5d

    iget-object v10, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    iget-object v7, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    add-int/lit8 v5, v4, -0x1

    :goto_28
    if-ltz v5, :cond_5d

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v10

    if-nez v10, :cond_46

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_58

    :cond_46
    invoke-virtual {v9}, Landroid/view/animation/Transformation;->clear()V

    iget-object v6, v2, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_5b

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :goto_52
    invoke-virtual {v2, v10, v9}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    invoke-virtual {v7, v9}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    :cond_58
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_5b
    const/4 v10, 0x0

    goto :goto_52

    :cond_5d
    return-void
.end method

.method public reset()V
    .registers 1

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    return-void
.end method

.method restoreChildrenStartOffset()V
    .registers 9

    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v6, v3, v2

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public restrictDuration(J)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .registers 6

    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public setDuration(J)V
    .registers 8

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    return-void
.end method

.method public setFillAfter(Z)V
    .registers 3

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public setFillBefore(Z)V
    .registers 3

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method public setStartOffset(J)V
    .registers 4

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public setStartTime(J)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method public willChangeBounds()Z
    .registers 3

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public willChangeTransformationMatrix()Z
    .registers 3

    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
