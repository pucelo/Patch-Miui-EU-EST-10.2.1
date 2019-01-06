.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    new-array v0, v1, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$SwipeTracker;)V
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .registers 18

    const/4 v1, -0x1

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v2, 0x0

    :goto_4
    const/4 v7, 0x4

    if-ge v2, v7, :cond_f

    aget-wide v8, v3, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_44

    :cond_f
    const/4 v7, 0x4

    if-ne v2, v7, :cond_15

    if-gez v1, :cond_15

    const/4 v1, 0x0

    :cond_15
    if-ne v1, v2, :cond_19

    add-int/lit8 v1, v1, -0x1

    :cond_19
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    if-ltz v1, :cond_34

    add-int/lit8 v6, v1, 0x1

    rsub-int/lit8 v7, v1, 0x4

    add-int/lit8 v0, v7, -0x1

    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    :cond_34
    aput p1, v4, v2

    aput p2, v5, v2

    aput-wide p3, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x4

    if-ge v2, v7, :cond_43

    const-wide/16 v8, 0x0

    aput-wide v8, v3, v2

    :cond_43
    return-void

    :cond_44
    aget-wide v8, v3, v2

    const-wide/16 v10, 0xc8

    sub-long v10, p3, v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_4f

    move v1, v2

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    return-void
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 23

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/16 v16, 0x0

    aget v10, v13, v16

    const/16 v16, 0x0

    aget v11, v14, v16

    const/16 v16, 0x0

    aget-wide v8, v12, v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1b
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v2, v0, :cond_29

    aget-wide v16, v12, v2

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_38

    :cond_29
    const/4 v7, 0x1

    :goto_2a
    if-ge v7, v2, :cond_78

    aget-wide v16, v12, v7

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v6, v0

    if-nez v6, :cond_3b

    :goto_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3b
    aget v16, v13, v7

    sub-float v5, v16, v10

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    const/16 v16, 0x0

    cmpl-float v16, v3, v16

    if-nez v16, :cond_6a

    move v3, v15

    :goto_52
    aget v16, v14, v7

    sub-float v5, v16, v11

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    const/16 v16, 0x0

    cmpl-float v16, v4, v16

    if-nez v16, :cond_71

    move v4, v15

    goto :goto_35

    :cond_6a
    add-float v16, v3, v15

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v3, v16, v17

    goto :goto_52

    :cond_71
    add-float v16, v4, v15

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v4, v16, v17

    goto :goto_35

    :cond_78
    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_a7

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_89
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    const/16 v16, 0x0

    cmpg-float v16, v4, v16

    if-gez v16, :cond_ae

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_a0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return-void

    :cond_a7
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_89

    :cond_ae
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_a0
.end method

.method public getXVelocity()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
