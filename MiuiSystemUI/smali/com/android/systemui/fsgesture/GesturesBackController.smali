.class public Lcom/android/systemui/fsgesture/GesturesBackController;
.super Ljava/lang/Object;
.source "GesturesBackController.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

.field private mContinuousBackFinishTime:J

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field mGestureEdgeLeft:I

.field mGestureEdgeRight:I

.field private volatile mIsGestureAnimationEnabled:Z

.field private mSwipeStatus:I

.field private mWithoutAnimatingDownX:F

.field private mWithoutAnimatingDragDirection:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;II)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    iput v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mIsGestureAnimationEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    iput p2, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    iput p3, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    return-void
.end method

.method static convertOffset(F)F
    .locals 8

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float v0, v2, v1

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sub-double v2, v6, v2

    double-to-float v1, v2

    return v1
.end method

.method static isFinished(FI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private processPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13

    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v12, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    iput v1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownY:F

    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_1

    iput v9, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    iput v12, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    goto :goto_0

    :cond_1
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-ltz v8, :cond_2

    iput v9, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    iput v10, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    goto :goto_0

    :cond_2
    iput v12, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    goto :goto_0

    :pswitch_1
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    if-eq v8, v12, :cond_0

    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    if-ne v8, v12, :cond_4

    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    sub-float v6, v0, v8

    :goto_1
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownY:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    if-ne v8, v9, :cond_3

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_3

    iput v10, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    iget-boolean v9, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mIsGestureAnimationEnabled:Z

    invoke-interface {v8, v9, v1}, Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;->onSwipeStart(ZF)V

    :cond_3
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    if-ne v8, v10, :cond_0

    const-string/jumbo v8, "GesturesBackController"

    const-string/jumbo v9, "onPointerEvent MotionEvent.ACTION_MOVE processMiuiGestures"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v2, v8

    int-to-float v8, v2

    div-float v8, v6, v8

    float-to-int v7, v8

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    invoke-static {v6, v7}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result v9

    invoke-interface {v8, v9, v6}, Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;->onSwipeProcess(ZF)V

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    sub-float v6, v8, v0

    goto :goto_1

    :pswitch_2
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    if-ne v8, v10, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v2, v8

    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    if-ne v8, v12, :cond_7

    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    sub-float v3, v0, v8

    :goto_2
    int-to-float v8, v2

    div-float v8, v3, v8

    float-to-int v7, v8

    invoke-static {v3, v7}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result v4

    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz v8, :cond_8

    const/16 v8, 0x10

    iput v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    invoke-interface {v8, v4, v3}, Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;->onSwipeStop(ZF)V

    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mContinuousBackFinishTime:J

    const-string/jumbo v8, "GesturesBackController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onPointerEvent MotionEvent.ACTION_UP stopGestures isFinish:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " speed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    goto/16 :goto_0

    :cond_7
    iget v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDownX:F

    sub-float v3, v8, v0

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_5

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    invoke-interface {v8}, Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;->onSwipeStopDirect()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processPointerEventWithoutAnimating(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mContinuousBackFinishTime:J

    const-string/jumbo v5, "GesturesBackController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processPointerEventWithoutAnimating currX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " currY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mDragDirection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mDragDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDownX:F

    iget v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    iput v8, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_0

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    if-ne v5, v10, :cond_2

    return-void

    :cond_2
    iget v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    if-ne v5, v8, :cond_4

    iget v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDownX:F

    sub-float v3, v0, v5

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v2, v6

    int-to-float v5, v2

    div-float v5, v3, v5

    float-to-int v4, v5

    int-to-float v5, v2

    div-float v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    invoke-interface {v5}, Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;->onSwipeStopDirect()V

    :cond_3
    const-string/jumbo v5, "GesturesBackController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processPointerEventWithoutAnimating MotionEvent.ACTION_UP offsetX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " diffTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " speed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDragDirection:I

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mWithoutAnimatingDownX:F

    sub-float v3, v5, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method enableGestureBackAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mIsGestureAnimationEnabled:Z

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const-string/jumbo v0, "GesturesBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPointerEvent swipeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mContinuousBackFinishTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;)V

    const-string/jumbo v0, "GesturesBackController"

    const-string/jumbo v1, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->processPointerEventWithoutAnimating(Landroid/view/MotionEvent;)V

    const-string/jumbo v0, "GesturesBackController"

    const-string/jumbo v1, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEventWithoutAnimating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;)V

    const-string/jumbo v0, "GesturesBackController"

    const-string/jumbo v1, "mSwipeStatus != SWIPE_STATUS_ANIMATING, processPointerEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    return-void
.end method
