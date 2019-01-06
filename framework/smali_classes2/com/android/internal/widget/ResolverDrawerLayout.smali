.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$1;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mCollapsibleHeightReserved:I

.field private mDismissLocked:Z

.field private mDismissOnScrollerFinished:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private mUncollapsibleHeight:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    const v3, 0x1080726

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private abortAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

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

.method private findChildUnder(FF)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_6
    if-ltz v2, :cond_16

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v0

    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_16
    const/4 v3, 0x0

    return-object v3
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_26
    const/4 v0, 0x0

    goto :goto_4

    :cond_28
    return-object v0
.end method

.method private getMaxCollapsedHeight()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    :goto_8
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0

    :cond_c
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    goto :goto_8
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float v0, v3, v5

    cmpl-float v5, p1, v1

    if-ltz v5, :cond_28

    cmpl-float v5, p2, v3

    if-ltz v5, :cond_28

    cmpg-float v5, p1, v2

    if-gez v5, :cond_28

    cmpg-float v5, p2, v0

    if-gez v5, :cond_28

    const/4 v4, 0x1

    :cond_28
    return v4
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .registers 13

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_3f

    move-object v2, p1

    :goto_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v9

    sub-int v1, v8, v9

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    :goto_2e
    if-ge v3, v0, :cond_59

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_50

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3f
    move-object v6, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    :goto_44
    if-eq v5, p0, :cond_4e

    move-object v6, v5

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_44

    :cond_4e
    move-object v2, v6

    goto :goto_1a

    :cond_50
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3c

    :cond_59
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v8, v1, :cond_60

    const/4 v7, 0x1

    :cond_60
    return v7
.end method

.method private isDismissable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isDragging()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isListChildUnderClipped(FF)Z
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isMoving()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private onCollapsedChanged(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    :cond_d
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_23

    if-nez v2, :cond_24

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private performDrag(F)F
    .registers 13

    const/4 v10, 0x0

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v7, p1

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_5a

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float p1, v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_38

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v7, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v7, :cond_35

    float-to-int v7, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_38
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_56

    const/4 v4, 0x1

    :goto_3f
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    cmpl-float v7, v6, v10

    if-eqz v7, :cond_58

    const/4 v3, 0x1

    :goto_4d
    if-eq v4, v3, :cond_52

    invoke-direct {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    :cond_52
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    return p1

    :cond_56
    const/4 v4, 0x0

    goto :goto_3f

    :cond_58
    const/4 v3, 0x0

    goto :goto_4d

    :cond_5a
    return v10
.end method

.method private resetTouch()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method private smoothScrollTo(IF)V
    .registers 16

    const/4 v1, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v0

    sub-int v4, p1, v2

    if-nez v4, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v9

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v0, v8

    int-to-float v3, v8

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v6, v0, v3

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_52

    div-float v0, v6, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    :goto_42
    const/16 v0, 0x12c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_52
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float v10, v0, v3

    add-float v0, v10, v12

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_42
.end method

.method private updateCollapseOffset(IZ)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ne p1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_44

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_34

    const/4 v1, 0x1

    :goto_14
    if-eqz p2, :cond_36

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v2, :cond_36

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    :goto_26
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_42

    const/4 v0, 0x1

    :goto_2d
    if-eq v1, v0, :cond_32

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    :cond_32
    :goto_32
    const/4 v2, 0x1

    return v2

    :cond_34
    const/4 v1, 0x0

    goto :goto_14

    :cond_36
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_26

    :cond_42
    const/4 v0, 0x0

    goto :goto_2d

    :cond_44
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v3, :cond_4c

    :goto_48
    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_32

    :cond_4c
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_48
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_26

    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;)V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method

.method dispatchOnDismissed()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    :cond_15
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    return-object v0

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_18
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCollapsed()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSmallCollapsed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_19
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    :cond_d
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_92

    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v4, :cond_1c

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    :cond_1c
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v4, :cond_22

    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    :cond_22
    return v5

    :pswitch_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v6

    if-eqz v6, :cond_3f

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3f

    move v4, v5

    :cond_3f
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    goto :goto_15

    :pswitch_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v1, v3, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_15

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_15

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v6, v1

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto :goto_15

    :pswitch_89
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_15

    :pswitch_8d
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_15

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_23
        :pswitch_8d
        :pswitch_42
        :pswitch_8d
        :pswitch_15
        :pswitch_15
        :pswitch_89
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v14

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v17

    sub-int v12, v14, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v4, :cond_76

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2f

    move-object v7, v3

    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3e

    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_3e
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v13, v16, v17

    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    move/from16 v17, v0

    if-eqz v17, :cond_58

    int-to-float v0, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    :cond_58
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v2, v13, v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v15, v12, v9

    sub-int v17, v15, v5

    div-int/lit8 v17, v17, 0x2

    add-int v8, v9, v17

    add-int v11, v8, v5

    invoke-virtual {v3, v8, v13, v11, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v16, v2, v17

    goto :goto_3b

    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b0

    if-eqz v7, :cond_b1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    sub-int v13, v2, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v13, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    :cond_b0
    :goto_b0
    return-void

    :cond_b1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    goto :goto_b0
.end method

.method protected onMeasure(II)V
    .registers 18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v13, v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_13
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v14

    add-int v3, v0, v14

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v14

    add-int v5, v0, v14

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v7, :cond_5c

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v0, :cond_59

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v14, 0x8

    if-eq v0, v14, :cond_59

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v5, v0

    :cond_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_5c
    move v6, v5

    const/4 v9, 0x0

    :goto_5e
    if-ge v9, v7, :cond_82

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v0, :cond_7f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v14, 0x8

    if-eq v0, v14, :cond_7f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v5, v0

    :cond_7f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    :cond_82
    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v0, v5, v6

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v14

    sub-int/2addr v0, v14

    const/4 v14, 0x0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v0, v5, v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v11, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    sub-int v0, v8, v5

    const/4 v14, 0x0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v14, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v14, v14

    add-int/2addr v0, v14

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    invoke-virtual {p0, v12, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p4, :cond_38

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_2d

    cmpg-float v1, p3, v3

    if-gez v1, :cond_2d

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2d

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    :goto_2c
    return v4

    :cond_2d
    cmpl-float v1, p3, v3

    if-lez v1, :cond_35

    :goto_31
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_2c

    :cond_35
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_31

    :cond_38
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    invoke-direct {p0, v2, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    const/4 v0, 0x1

    return v0

    :cond_13
    return v2
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_a
    const/16 v0, 0x1000

    if-ne p2, v0, :cond_18

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return v3

    :cond_18
    return v2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 7

    if-lez p3, :cond_d

    neg-int v0, p3

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p4, v1

    :cond_d
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 7

    if-gez p5, :cond_7

    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    :cond_7
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v2, :cond_16

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    const/4 v0, 0x0

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :cond_1b
    return-void

    :cond_1c
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_266

    :goto_11
    :pswitch_11
    return v3

    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5a

    const/4 v4, 0x1

    :goto_42
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v12

    if-nez v12, :cond_4e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v12, :cond_5c

    :cond_4e
    const/4 v3, 0x1

    :goto_4f
    if-eqz v4, :cond_5e

    move v12, v3

    :goto_52
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    goto :goto_11

    :cond_5a
    const/4 v4, 0x0

    goto :goto_42

    :cond_5c
    const/4 v3, 0x0

    goto :goto_4f

    :cond_5e
    const/4 v12, 0x0

    goto :goto_52

    :pswitch_60
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_b1

    const-string/jumbo v12, "ResolverDrawerLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad pointer id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", resetting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    :cond_b1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v12, :cond_109

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v2, v10, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_109

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_109

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    :cond_109
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v12, :cond_11a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v2, v10, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    :cond_11a
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto/16 :goto_11

    :pswitch_120
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    goto/16 :goto_11

    :pswitch_148
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_11

    :pswitch_14d
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v8, :cond_186

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_186

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_186

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v12

    if-eqz v12, :cond_186

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    const/4 v12, 0x1

    return v12

    :cond_186
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v12, :cond_1c1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    const/4 v12, 0x1

    return v12

    :cond_1c1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_223

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v12

    if-eqz v12, :cond_212

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_212

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_212

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    :goto_20d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_11

    :cond_212
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_21e

    const/4 v12, 0x0

    :goto_218
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_20d

    :cond_21e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_218

    :cond_223
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23a

    const/4 v12, 0x0

    :goto_233
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_20d

    :cond_23a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_233

    :pswitch_23f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v12, :cond_25b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_260

    const/4 v12, 0x0

    :goto_255
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :cond_25b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    const/4 v12, 0x1

    return v12

    :cond_260
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_255

    nop

    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14d
        :pswitch_60
        :pswitch_23f
        :pswitch_11
        :pswitch_120
        :pswitch_148
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_c

    return v1

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v3

    :cond_13
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_21

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_21

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return v3

    :cond_21
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :cond_14
    return-void
.end method

.method public setCollapsed(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_12

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_d
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setCollapsibleHeightReserved(I)V
    .registers 7

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    sub-int v0, v3, v2

    if-eqz v0, :cond_14

    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    :cond_14
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-void

    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    return-void
.end method

.method public setDismissLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    return-void
.end method

.method public setSmallCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    return-void
.end method
