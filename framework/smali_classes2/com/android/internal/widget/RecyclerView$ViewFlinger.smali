.class Lcom/android/internal/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .registers 19

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_59

    const/4 v9, 0x1

    :goto_b
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    if-eqz v9, :cond_5b

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    :goto_29
    div-int/lit8 v8, v3, 0x2

    int-to-float v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    int-to-float v12, v3

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v11, v8

    int-to-float v12, v8

    invoke-direct {p0, v6}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    if-lez v10, :cond_62

    int-to-float v11, v10

    div-float v11, v5, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    :goto_52
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    :cond_59
    const/4 v9, 0x0

    goto :goto_b

    :cond_5b
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_29

    :cond_62
    if-eqz v9, :cond_70

    :goto_64
    int-to-float v0, v1

    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    goto :goto_52

    :cond_70
    move v1, v2

    goto :goto_64
.end method

.method private disableRunOnAnimationRequests()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_a
    return-void
.end method


# virtual methods
.method public fling(II)V
    .registers 12

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_7
.end method

.method public run()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v20

    if-eqz v20, :cond_239

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v20, v0

    sub-int v4, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    const/4 v9, 0x0

    const/16 v17, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_130

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string/jumbo v20, "RV Scroll"

    invoke-static/range {v20 .. v20}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v4, :cond_b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v9

    sub-int v10, v4, v9

    :cond_b9
    if-eqz v5, :cond_eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v17

    sub-int v11, v5, v17

    :cond_eb
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    if-eqz v13, :cond_130

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_130

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_130

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-nez v3, :cond_25b

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_130
    :goto_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_14b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_168

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_168
    if-nez v10, :cond_16c

    if-eqz v11, :cond_1b4

    :cond_16c
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    const/4 v15, 0x0

    move/from16 v0, v18

    if-eq v10, v0, :cond_17b

    if-gez v10, :cond_284

    neg-int v15, v14

    :cond_17b
    :goto_17b
    const/16 v16, 0x0

    move/from16 v0, v19

    if-eq v11, v0, :cond_186

    if-gez v11, :cond_28c

    neg-int v0, v14

    move/from16 v16, v0

    :cond_186
    :goto_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/widget/RecyclerView;->absorbGlows(II)V

    :cond_1a5
    if-nez v15, :cond_1ab

    move/from16 v0, v18

    if-ne v10, v0, :cond_296

    :cond_1ab
    :goto_1ab
    if-nez v16, :cond_1b1

    move/from16 v0, v19

    if-ne v11, v0, :cond_29e

    :cond_1b1
    :goto_1b1
    invoke-virtual {v12}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_1b4
    if-nez v9, :cond_1b8

    if-eqz v17, :cond_1c5

    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->-wrap0(Lcom/android/internal/widget/RecyclerView;)Z

    move-result v20

    if-nez v20, :cond_1da

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_1da
    if-eqz v5, :cond_2a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v20

    if-eqz v20, :cond_2a9

    move/from16 v0, v17

    if-ne v0, v5, :cond_2a6

    const/4 v8, 0x1

    :goto_1f3
    if-eqz v4, :cond_2af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v20

    if-eqz v20, :cond_2af

    if-ne v9, v4, :cond_2ac

    const/4 v7, 0x1

    :goto_20a
    if-nez v4, :cond_2b2

    if-nez v5, :cond_2b2

    :cond_20e
    const/4 v6, 0x1

    :goto_20f
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v20

    if-nez v20, :cond_219

    xor-int/lit8 v20, v6, 0x1

    if-eqz v20, :cond_2b7

    :cond_219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-get0()Z

    move-result v20

    if-eqz v20, :cond_239

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_239
    :goto_239
    if-eqz v13, :cond_257

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v20

    if-eqz v20, :cond_24c

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-wrap0(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    :cond_24c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v20, v0

    if-nez v20, :cond_257

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_257
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void

    :cond_25b
    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v20

    move/from16 v0, v20

    if-lt v0, v3, :cond_277

    add-int/lit8 v20, v3, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-wrap0(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_130

    :cond_277
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->-wrap0(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_130

    :cond_284
    if-lez v10, :cond_289

    move v15, v14

    goto/16 :goto_17b

    :cond_289
    const/4 v15, 0x0

    goto/16 :goto_17b

    :cond_28c
    if-lez v11, :cond_292

    move/from16 v16, v14

    goto/16 :goto_186

    :cond_292
    const/16 v16, 0x0

    goto/16 :goto_186

    :cond_296
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v20

    if-nez v20, :cond_1b4

    goto/16 :goto_1ab

    :cond_29e
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v20

    if-nez v20, :cond_1b4

    goto/16 :goto_1b1

    :cond_2a6
    const/4 v8, 0x0

    goto/16 :goto_1f3

    :cond_2a9
    const/4 v8, 0x0

    goto/16 :goto_1f3

    :cond_2ac
    const/4 v7, 0x0

    goto/16 :goto_20a

    :cond_2af
    const/4 v7, 0x0

    goto/16 :goto_20a

    :cond_2b2
    if-nez v7, :cond_20e

    move v6, v8

    goto/16 :goto_20f

    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_239

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    goto/16 :goto_239
.end method

.method public smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .registers 5

    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_14

    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_9

    sget-object p3, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_9
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
