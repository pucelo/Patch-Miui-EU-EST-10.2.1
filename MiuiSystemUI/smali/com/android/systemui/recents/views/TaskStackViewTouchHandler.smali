.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;


# static fields
.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field private mAllowHideRecentsFromBackgroundTap:Z

.field mContext:Landroid/content/Context;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mDownScrollP:F

.field mDownX:I

.field mDownY:I

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mInterceptedBySwipeHelper:Z

.field private mIsCancelAnimations:Z

.field mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastScrollP:F

.field mLastY:I

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field private mOldStackScroll:F

.field mOverscrollSize:I

.field mRecentsTaskLockDistance:I

.field mScrollFlingAnimator:Landroid/animation/ValueAnimator;

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field private final mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const v4, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e333333    # 0.175f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    new-instance v4, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v4}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mAllowHideRecentsFromBackgroundTap:Z

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    const v4, 0x7f0703d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    new-instance v4, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v4, 0x7f07039f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    const v4, 0x7f0703c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mRecentsTaskLockDistance:I

    const v4, 0x7f0703c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f0703c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v4, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;

    invoke-direct {v4, p0, v6, p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/recents/SwipeHelperForRecents$Callback;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->setDisableHardwareLayers(Z)V

    return-void
.end method

.method private findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v2, v10, 0xff

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startScaleAnim()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v11, v2, :cond_3

    :cond_2
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int v2, v32, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v2, v3, :cond_6

    move/from16 v0, v34

    move/from16 v1, v33

    if-le v0, v1, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    :goto_1
    if-ltz v15, :cond_4

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V

    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    if-eqz v26, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x11f

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startResetAnim()V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(II)F

    move-result v14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float v13, v2, v14

    cmpg-float v2, v13, v21

    if-ltz v2, :cond_7

    cmpl-float v2, v13, v19

    if-lez v2, :cond_8

    :cond_7
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v12

    sub-float v24, v13, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x40155555

    div-float v25, v2, v3

    sget-object v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const v3, 0x40155555

    mul-float v3, v3, v17

    mul-float/2addr v2, v3

    add-float v13, v12, v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v0, v2, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    move/from16 v0, v31

    neg-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move/from16 v0, v31

    neg-float v2, v0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v2, v5, v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->performHapticFeedback(I)Z

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    sub-float v7, v13, v7

    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->updateY(I)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    :cond_a
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v27

    if-ne v0, v2, :cond_b

    if-nez v28, :cond_c

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_c
    const/16 v23, 0x0

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    if-ltz v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v11, v2, :cond_e

    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll(I)Landroid/animation/ObjectAnimator;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_f
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move/from16 v0, v22

    float-to-int v7, v0

    move/from16 v0, v20

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-nez v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(II)V

    goto :goto_4

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startResetAnim()V

    goto :goto_4

    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private startResetAnim()V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->QUAD_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startScaleAnim()V
    .locals 4

    const v1, 0x3f828f5c    # 1.02f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private updateTaskViewTransforms(F)V
    .locals 12

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    if-ltz v3, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    :cond_2
    const-string/jumbo v8, "TaskStackViewTouchHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTaskViewTransforms error, taskIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",  mCurrentTaskTransforms.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",  mCurrentTaskTransforms.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    sget-object v9, Lcom/android/systemui/recents/misc/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/recents/misc/RectFEvaluator;

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/systemui/recents/misc/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v10, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public cancelNonDismissTaskAnimations()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x1

    :cond_2
    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    return v1
.end method

.method public checkToBeginDrag(Landroid/view/View;)Z
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->startDrag()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object v3
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOldStackScroll()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    return v0
.end method

.method public getScaledDismissSize()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method maybeHideRecentsFromBackgroundTap(II)V
    .locals 8

    const/4 v7, 0x0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v0, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v1, v4, :cond_2

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mAllowHideRecentsFromBackgroundTap:Z

    if-nez v4, :cond_3

    const-string/jumbo v4, "TaskStackViewTouchHandler"

    const-string/jumbo v5, "mAllowHideRecentsFromBackgroundTap == false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gt v4, p2, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->launchFreeformTasks()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v7, v6, v7}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-string/jumbo v4, "hideRecents"

    const-string/jumbo v5, "clickEmptySpace"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginDrag(Landroid/view/View;)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v6, 0xc8

    invoke-direct {v1, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    :goto_0
    invoke-direct {v3, v4, v0, v1}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "overview_task_dismissed_source"

    invoke-static {v1, v2, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "removeTask"

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 4

    const/4 v2, 0x1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x96

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mRecentsTaskLockDistance:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->updateLockedFlagVisible(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;

    iget-boolean v4, v0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    return-void
.end method

.method public onDragEnd(Landroid/view/View;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    move-object v7, p1

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    return v4

    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v5, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    :goto_0
    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v4, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method recycleVelocityTracker()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public setAllowHideRecentsFromBackgroundTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mAllowHideRecentsFromBackgroundTap:Z

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
