.class public Lcom/android/internal/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ScrollingView;
.implements Lcom/android/internal/widget/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$1;,
        Lcom/android/internal/widget/RecyclerView$2;,
        Lcom/android/internal/widget/RecyclerView$3;,
        Lcom/android/internal/widget/RecyclerView$4;,
        Lcom/android/internal/widget/RecyclerView$Adapter;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;,
        Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/android/internal/widget/RecyclerView$ItemDecoration;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager;,
        Lcom/android/internal/widget/RecyclerView$LayoutParams;,
        Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/android/internal/widget/RecyclerView$OnFlingListener;,
        Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$OnScrollListener;,
        Lcom/android/internal/widget/RecyclerView$RecycledViewPool;,
        Lcom/android/internal/widget/RecyclerView$Recycler;,
        Lcom/android/internal/widget/RecyclerView$RecyclerListener;,
        Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;,
        Lcom/android/internal/widget/RecyclerView$SavedState;,
        Lcom/android/internal/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller;,
        Lcom/android/internal/widget/RecyclerView$State;,
        Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;,
        Lcom/android/internal/widget/RecyclerView$ViewFlinger;,
        Lcom/android/internal/widget/RecyclerView$ViewHolder;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mFirstLayoutComplete:Z

.field mGapWorker:Lcom/android/internal/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

.field mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field final mState:Lcom/android/internal/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/RecyclerView;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0xf

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [I

    const v3, 0x1010436

    aput v3, v0, v2

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    new-array v0, v1, [I

    const v3, 0x10100eb

    aput v3, v0, v2

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_6d

    :cond_22
    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_77

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_79

    move v0, v1

    :goto_35
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_7b

    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_7d

    move v0, v1

    :goto_45
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_7f

    move v0, v1

    :goto_4c
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/widget/RecyclerView$3;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_6d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_75

    move v0, v1

    goto :goto_23

    :cond_75
    move v0, v2

    goto :goto_23

    :cond_77
    move v0, v2

    goto :goto_2c

    :cond_79
    move v0, v2

    goto :goto_35

    :cond_7b
    move v0, v2

    goto :goto_3e

    :cond_7d
    move v0, v2

    goto :goto_45

    :cond_7f
    move v0, v2

    goto :goto_4c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$Recycler;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    new-instance v1, Lcom/android/internal/widget/ViewInfoStore;

    invoke-direct {v1}, Lcom/android/internal/widget/ViewInfoStore;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$1;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    iput v11, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    iput-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput v11, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iput v11, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    new-instance v1, Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-direct {v1}, Lcom/android/internal/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iput v11, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    iput v4, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    iput-boolean v10, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    new-instance v1, Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_6f

    new-instance v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    :cond_6f
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    new-instance v0, Lcom/android/internal/widget/RecyclerView$State;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$State;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    new-instance v0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    iput-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerView$2;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/RecyclerView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerView$4;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    if-eqz p2, :cond_148

    sget-object v0, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v0, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :goto_bb
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/RecyclerView;->setScrollContainer(Z)V

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v3, :cond_14c

    move v0, v10

    :goto_de
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_f7

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/RecyclerView;->setImportantForAccessibility(I)V

    :cond_f7
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    const/4 v8, 0x1

    if-eqz p2, :cond_14e

    const/4 v5, 0x0

    sget-object v0, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v4, :cond_127

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_127
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_144

    sget-object v0, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_144
    :goto_144
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_148
    iput-boolean v10, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    goto/16 :goto_bb

    :cond_14c
    move v0, v11

    goto :goto_de

    :cond_14e
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    goto :goto_144
.end method

.method private addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_24

    const/4 v0, 0x1

    :goto_a
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4, v3, v5}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :goto_23
    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_a

    :cond_26
    if-nez v0, :cond_2e

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1, v5}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_23

    :cond_2e
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_23
.end method

.method private animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_9

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_9
    if-eq p1, p2, :cond_1f

    if-eqz p6, :cond_10

    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_10
    iput-object p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    :cond_2a
    return-void
.end method

.method private cancelTouch()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_d
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_14

    return-void

    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_20

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    goto :goto_d

    :cond_22
    iput-object v3, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_24
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 22

    if-eqz p2, :cond_58

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_58

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v13

    if-eqz v13, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_1e
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-class v14, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_29} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_29} :catch_123
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_29} :catch_fe
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_29} :catch_d9
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_29} :catch_b4

    move-result-object v12

    const/4 v3, 0x0

    :try_start_2b
    sget-object v13, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v13, 0x4

    new-array v4, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v4, v13

    const/4 v13, 0x1

    aput-object p3, v4, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v4, v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v4, v14
    :try_end_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_48} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_48} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_48} :catch_123
    .catch Ljava/lang/InstantiationException; {:try_start_2b .. :try_end_48} :catch_fe
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_48} :catch_d9
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_48} :catch_b4

    move-object v3, v4

    :goto_49
    const/4 v13, 0x1

    :try_start_4a
    invoke-virtual {v2, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    :cond_58
    return-void

    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_5c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4a .. :try_end_5c} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4a .. :try_end_5c} :catch_123
    .catch Ljava/lang/InstantiationException; {:try_start_4a .. :try_end_5c} :catch_fe
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_5c} :catch_d9
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_5c} :catch_b4

    move-result-object v1

    goto :goto_1e

    :catch_5e
    move-exception v9

    const/4 v13, 0x0

    :try_start_60
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_65
    .catch Ljava/lang/NoSuchMethodException; {:try_start_60 .. :try_end_65} :catch_67
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_65} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_60 .. :try_end_65} :catch_123
    .catch Ljava/lang/InstantiationException; {:try_start_60 .. :try_end_65} :catch_fe
    .catch Ljava/lang/IllegalAccessException; {:try_start_60 .. :try_end_65} :catch_d9
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_65} :catch_b4

    move-result-object v2

    goto :goto_49

    :catch_67
    move-exception v11

    :try_start_68
    invoke-virtual {v11, v9}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Error creating LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_68 .. :try_end_8f} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_68 .. :try_end_8f} :catch_123
    .catch Ljava/lang/InstantiationException; {:try_start_68 .. :try_end_8f} :catch_fe
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_8f} :catch_d9
    .catch Ljava/lang/ClassCastException; {:try_start_68 .. :try_end_8f} :catch_b4

    :catch_8f
    move-exception v6

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Unable to find LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_b4
    move-exception v5

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Class is not a LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_d9
    move-exception v7

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Cannot access non-public constructor "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_fe
    move-exception v8

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_123
    move-exception v10

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private didChildRangeChange(II)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_13

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 16

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v11}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->saveFocusInfo()V

    iget-object v12, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v11, v11, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_77

    iget-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    :goto_26
    iput-boolean v11, v12, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v12, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v12, v12, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v12, v11, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v12, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v11, v11, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_bc

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v11}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_52
    if-ge v6, v2, :cond_bc

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_74

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_79

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_79

    :cond_74
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_77
    const/4 v11, 0x0

    goto :goto_26

    :cond_79
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-static {v5}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v13

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v12, v5, v13, v14}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v11, v5, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v11, v11, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v11, :cond_74

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_74

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_74

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_74

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_74

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_74

    :cond_bc
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v11, v11, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v11, :cond_135

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->saveOldPositions()V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v11, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v12, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v13, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v3, v11, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v6, 0x0

    :goto_dc
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v11}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_125

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_f7

    :cond_f4
    :goto_f4
    add-int/lit8 v6, v6, 0x1

    goto :goto_dc

    :cond_f7
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v11, v7}, Lcom/android/internal/widget/ViewInfoStore;->isInPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_f4

    invoke-static {v7}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v4

    const/16 v11, 0x2000

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-nez v10, :cond_10d

    or-int/lit16 v4, v4, 0x1000

    :cond_10d
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v4, v13}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    if-eqz v10, :cond_11f

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_f4

    :cond_11f
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v11, v7, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_f4

    :cond_125
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    :goto_128
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v12, 0x2

    iput v12, v11, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    return-void

    :cond_135
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    goto :goto_128
.end method

.method private dispatchLayoutStep2()V
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    return-void

    :cond_4f
    move v0, v1

    goto :goto_41
.end method

.method private dispatchLayoutStep3()V
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v13, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_20
    if-ltz v8, :cond_89

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_35

    :goto_32
    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    :cond_35
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v9, v2}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-eqz v5, :cond_67

    if-ne v1, v2, :cond_67

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_32

    :cond_67
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewInfoStore;->popFromPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ViewInfoStore;->popFromPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    if-nez v3, :cond_7e

    invoke-direct {p0, v10, v11, v2, v1}, Lcom/android/internal/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_32

    :cond_7e
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/RecyclerView;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_32

    :cond_83
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_32

    :cond_89
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ViewInfoStore;->process(Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;)V

    :cond_90
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v9, v9, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iput-boolean v12, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v12, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v12, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v12, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_ba
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput v12, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v12, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_cd
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v12}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lcom/android/internal/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-virtual {p0, v12, v12}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_f0
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->recoverFocusFromState()V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    if-eqz v4, :cond_f

    if-nez v0, :cond_2b

    iput-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    :cond_f
    if-eqz v0, :cond_3b

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_3b

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_38

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    return v6

    :cond_2b
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v4, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 v4, 0x3

    if-eq v0, v4, :cond_35

    if-ne v0, v6, :cond_37

    :cond_35
    iput-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    :cond_37
    return v6

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_3b
    return v5
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_a

    if-nez v0, :cond_d

    :cond_a
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    :cond_d
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_2d

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eq v0, v6, :cond_2a

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    const/4 v4, 0x1

    return v4

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2d
    return v5
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    aput v8, p1, v7

    aput v8, p1, v9

    return-void

    :cond_10
    const v4, 0x7fffffff

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_36

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2b

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2b
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ge v5, v4, :cond_32

    move v4, v5

    :cond_32
    if-le v5, v3, :cond_28

    move v3, v5

    goto :goto_28

    :cond_36
    aput v4, p1, v7

    aput v3, p1, v9

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;
    .registers 8

    const/4 v6, 0x0

    instance-of v5, p0, Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    return-object v6

    :cond_6
    instance-of v5, p0, Lcom/android/internal/widget/RecyclerView;

    if-eqz v5, :cond_d

    check-cast p0, Lcom/android/internal/widget/RecyclerView;

    return-object p0

    :cond_d
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_25

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_22

    return-object v2

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    return-object v6
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2a

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v4, v5, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    :goto_c
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    move v0, v4

    :goto_13
    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_2c

    :cond_1b
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_21
    if-ltz v0, :cond_48

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_3a

    return-object v7

    :cond_2a
    const/4 v4, 0x0

    goto :goto_c

    :cond_2c
    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v5

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v5

    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_48
    return-object v7
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_26

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_4

    :cond_26
    return v1
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v2, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string/jumbo v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-object p2

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrollFactor()F
    .registers 5

    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_30

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    :cond_30
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    return v1

    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method private handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 14

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_76

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_18

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_51

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_51
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_76
    const-string/jumbo v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .registers 5

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_26

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    return v3

    :cond_26
    const/4 v3, 0x0

    return v3
.end method

.method private initChildrenHelper()V
    .registers 3

    new-instance v0, Lcom/android/internal/widget/ChildHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$5;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ChildHelper;-><init>(Lcom/android/internal/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    if-ne p2, p0, :cond_8

    :cond_7
    return v2

    :cond_8
    if-nez p1, :cond_b

    return v3

    :cond_b
    if-eq p3, v5, :cond_f

    if-ne p3, v3, :cond_3c

    :cond_f
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_27

    const/4 v1, 0x1

    :goto_18
    if-ne p3, v5, :cond_1b

    move v2, v3

    :cond_1b
    xor-int/2addr v2, v1

    if-eqz v2, :cond_29

    const/16 v0, 0x42

    :goto_20
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    return v3

    :cond_27
    const/4 v1, 0x0

    goto :goto_18

    :cond_29
    const/16 v0, 0x11

    goto :goto_20

    :cond_2c
    if-ne p3, v5, :cond_35

    const/16 v2, 0x82

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    return v2

    :cond_35
    const/16 v2, 0x21

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    return v2

    :cond_3c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    return v2
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sparse-switch p3, :sswitch_data_cc

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_43
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_57

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_62

    :cond_57
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_63

    :goto_61
    move v1, v0

    :cond_62
    return v1

    :cond_63
    move v0, v1

    goto :goto_61

    :sswitch_65
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_79

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_84

    :cond_79
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_85

    :goto_83
    move v1, v0

    :cond_84
    return v1

    :cond_85
    move v0, v1

    goto :goto_83

    :sswitch_87
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_9b

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_a6

    :cond_9b
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_a7

    :goto_a5
    move v1, v0

    :cond_a6
    return v1

    :cond_a7
    move v0, v1

    goto :goto_a5

    :sswitch_a9
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_bd

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_c8

    :cond_bd
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_c9

    :goto_c7
    move v1, v0

    :cond_c8
    return v1

    :cond_c9
    move v0, v1

    goto :goto_c7

    nop

    :sswitch_data_cc
    .sparse-switch
        0x11 -> :sswitch_43
        0x21 -> :sswitch_87
        0x42 -> :sswitch_65
        0x82 -> :sswitch_a9
    .end sparse-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 7

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_2b

    if-nez v0, :cond_2c

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    :cond_2b
    return-void

    :cond_2c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    :goto_1a
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v1, :cond_5f

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    :goto_20
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_63

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_36

    if-nez v0, :cond_36

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v1, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v1, :cond_63

    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    :goto_40
    iput-boolean v1, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_56

    if-eqz v0, :cond_56

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_56

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v2

    :cond_56
    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void

    :cond_59
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_1a

    :cond_5f
    const/4 v0, 0x1

    goto :goto_20

    :cond_61
    const/4 v1, 0x1

    goto :goto_40

    :cond_63
    move v1, v2

    goto :goto_40
.end method

.method private pullGlows(FFFF)V
    .registers 11

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x0

    cmpg-float v1, p2, v4

    if-gez v1, :cond_46

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    :cond_21
    :goto_21
    cmpg-float v1, p4, v4

    if-gez v1, :cond_62

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    :cond_3c
    :goto_3c
    if-nez v0, :cond_42

    cmpl-float v1, p2, v4

    if-eqz v1, :cond_80

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    :cond_45
    return-void

    :cond_46
    cmpl-float v1, p2, v4

    if-lez v1, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    goto :goto_21

    :cond_62
    cmpl-float v1, p4, v4

    if-lez v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    goto :goto_3c

    :cond_80
    cmpl-float v1, p4, v4

    if-eqz v1, :cond_45

    goto :goto_42
.end method

.method private recoverFocusFromState()V
    .registers 9

    const-wide/16 v6, -0x1

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v4, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    sget-boolean v4, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v4, :cond_51

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_51

    :cond_45
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestFocus()Z

    return-void

    :cond_51
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_5a

    return-void

    :cond_5a
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :cond_73
    const/4 v3, 0x0

    if-eqz v1, :cond_8a

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_8a

    iget-object v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b6

    :cond_8a
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v4

    if-lez v4, :cond_96

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v3

    :cond_96
    :goto_96
    if-eqz v3, :cond_b5

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_b2

    move-object v3, v0

    :cond_b2
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_b5
    return-void

    :cond_b6
    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_96
.end method

.method private releaseGlows()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_b
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_15
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_1f
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_29
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    :cond_2e
    return-void
.end method

.method private resetFocusInfo()V
    .registers 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetTouch()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .registers 6

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    :cond_13
    if-nez v0, :cond_1c

    const/4 v1, 0x0

    :goto_16
    if-nez v1, :cond_21

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_16

    :cond_21
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_2f
    iput-wide v2, v4, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_48

    const/4 v2, -0x1

    :goto_38
    iput v2, v3, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    goto :goto_1b

    :cond_45
    const-wide/16 v2, -0x1

    goto :goto_2f

    :cond_48
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_38

    :cond_51
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    goto :goto_38
.end method

.method private setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V
    .registers 7

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    :cond_10
    if-eqz p2, :cond_14

    if-eqz p3, :cond_17

    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_17
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    :cond_2a
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V

    :cond_35
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_e
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5

    if-gez p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_b
    :goto_b
    if-gez p2, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_16
    :goto_16
    if-nez p1, :cond_1a

    if-eqz p2, :cond_1d

    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    :cond_1d
    return-void

    :cond_1e
    if-lez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_b

    :cond_29
    if-lez p2, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_16
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_11
    return-void
.end method

.method public addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_18
    if-gez p2, :cond_26

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1f
.end method

.method public addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    :cond_f
    return-void
.end method

.method animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    :cond_12
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_17

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2c

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return-void
.end method

.method canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method clearOldPositions()V
    .registers 5

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    return-void
.end method

.method public clearOnScrollListeners()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    :cond_16
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    :cond_16
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    :cond_16
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    :cond_16
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    :cond_16
    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    :cond_16
    return v0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    if-lez p1, :cond_17

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_17
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2d

    if-gez p1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_2d
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_43

    if-lez p2, :cond_43

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_43
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_59

    if-gez p2, :cond_59

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x1

    :cond_59
    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    :cond_5e
    return-void
.end method

.method consumePendingUpdateOperations()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_15

    :cond_8
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_62

    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_51

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    :cond_51
    :goto_51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_51

    :cond_62
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5b
.end method

.method defaultOnMeasure(II)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_12
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1e
    if-ltz v1, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_12
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1e
    if-ltz v1, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method dispatchLayout()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v0, :cond_e

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    :goto_33
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_54

    :cond_4b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_33

    :cond_54
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_33
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onScrollStateChanged(I)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    :cond_15
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_21
    if-ltz v0, :cond_31

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 7

    iget v3, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/internal/widget/RecyclerView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->onScrolled(II)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    :cond_1d
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_29
    if-ltz v0, :cond_39

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_39
    iget v3, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .registers 6

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-ltz v0, :cond_30

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_21

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_24
    iget v1, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eq v1, v4, :cond_21

    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    goto :goto_21

    :cond_30
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1d

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v8}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_55

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_55

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_11d

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    :goto_38
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_120

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    :goto_52
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_55
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_86

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_86

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_78
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_123

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    :goto_82
    or-int/2addr v2, v6

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_86
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_be

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_be

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_126

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    :goto_a4
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_129

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    :goto_ba
    or-int/2addr v2, v6

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_be
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_100

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_100

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_12b

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_f2
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_fc

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    :cond_fc
    or-int/2addr v2, v7

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_100
    if-nez v2, :cond_117

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_117

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_117

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_117

    const/4 v2, 0x1

    :cond_117
    if-eqz v2, :cond_11c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    :cond_11c
    return-void

    :cond_11d
    const/4 v3, 0x0

    goto/16 :goto_38

    :cond_120
    const/4 v2, 0x0

    goto/16 :goto_52

    :cond_123
    move v6, v7

    goto/16 :goto_82

    :cond_126
    const/4 v3, 0x0

    goto/16 :goto_a4

    :cond_129
    move v6, v7

    goto :goto_ba

    :cond_12b
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f2
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_14
    return-void
.end method

.method ensureBottomGlow()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_35
.end method

.method ensureLeftGlow()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_35
.end method

.method ensureRightGlow()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_35
.end method

.method ensureTopGlow()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_35
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 9

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_8
    if-ltz v2, :cond_44

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_41

    return-object v0

    :cond_41
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_44
    const/4 v5, 0x0

    return-object v5
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_15

    if-eq v0, p0, :cond_15

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_15

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5

    :cond_15
    if-ne v0, p0, :cond_18

    :goto_17
    return-object p1

    :cond_18
    move-object p1, v1

    goto :goto_17
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_7
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 8

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_6

    return-object v5

    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_39

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_35

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_35

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object v1, v2

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_38
    return-object v2

    :cond_39
    return-object v1
.end method

.method public findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 10

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    :cond_f
    return-object v5

    :cond_10
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_45

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_41

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_41

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_44

    move-object v1, v2

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_44
    return-object v2

    :cond_45
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 9

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_3a

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_24

    if-eqz p2, :cond_27

    iget v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2d

    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_27
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_24

    :cond_2d
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_39

    move-object v1, v2

    goto :goto_24

    :cond_39
    return-object v2

    :cond_3a
    return-object v1
.end method

.method public fling(II)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_10

    const-string/jumbo v3, "RecyclerView"

    const-string/jumbo v4, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_10
    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_15

    return v5

    :cond_15
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v1, :cond_2b

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_2c

    :cond_2b
    const/4 p1, 0x0

    :cond_2c
    if-eqz v2, :cond_36

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_37

    :cond_36
    const/4 p2, 0x0

    :cond_37
    if-nez p1, :cond_3c

    if-nez p2, :cond_3c

    return v5

    :cond_3c
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_7d

    if-nez v1, :cond_59

    move v0, v2

    :goto_47
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_5b

    return v6

    :cond_59
    const/4 v0, 0x1

    goto :goto_47

    :cond_5b
    if-eqz v0, :cond_7d

    iget v3, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v3, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v6

    :cond_7d
    return v5
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 16

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_d

    return-object v6

    :cond_d
    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_76

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v10, :cond_76

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_76

    iget-boolean v10, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    xor-int/lit8 v1, v10, 0x1

    :goto_21
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    if-eqz v1, :cond_a0

    if-eq p2, v12, :cond_2b

    if-ne p2, v8, :cond_a0

    :cond_2b
    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_44

    if-ne p2, v12, :cond_78

    const/16 v0, 0x82

    :goto_38
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7b

    const/4 v5, 0x1

    :goto_3f
    sget-boolean v10, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_44

    move p2, v0

    :cond_44
    if-nez v5, :cond_6a

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_6a

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v10

    if-ne v10, v8, :cond_7d

    const/4 v7, 0x1

    :goto_57
    if-ne p2, v12, :cond_7f

    :goto_59
    xor-int/2addr v8, v7

    if-eqz v8, :cond_81

    const/16 v0, 0x42

    :goto_5e
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_84

    const/4 v5, 0x1

    :goto_65
    sget-boolean v8, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v8, :cond_6a

    move p2, v0

    :cond_6a
    if-eqz v5, :cond_95

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_86

    return-object v11

    :cond_76
    const/4 v1, 0x0

    goto :goto_21

    :cond_78
    const/16 v0, 0x21

    goto :goto_38

    :cond_7b
    const/4 v5, 0x0

    goto :goto_3f

    :cond_7d
    const/4 v7, 0x0

    goto :goto_57

    :cond_7f
    move v8, v9

    goto :goto_59

    :cond_81
    const/16 v0, 0x11

    goto :goto_5e

    :cond_84
    const/4 v5, 0x0

    goto :goto_65

    :cond_86
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_95
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    :cond_99
    :goto_99
    invoke-direct {p0, p1, v6, p2}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_c3

    :goto_9f
    return-object v6

    :cond_a0
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_99

    if-eqz v1, :cond_99

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_b2

    return-object v11

    :cond_b2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_99

    :cond_c3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    goto :goto_9f
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 4

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, -0x1

    return v0

    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    iget v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_c
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .registers 4

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .registers 6

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    :cond_10
    return-wide v2

    :cond_11
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :cond_1b
    return-wide v2
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 4

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2d

    if-eq v0, p0, :cond_2d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_e

    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v4

    :cond_e
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_22
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v4

    :cond_25
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_6e

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_6e
    iput-boolean v7, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v2
.end method

.method public getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .registers 3

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Lcom/android/internal/widget/RecyclerView$OnFlingListener;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method initAdapterManager()V
    .registers 3

    new-instance v0, Lcom/android/internal/widget/AdapterHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$6;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    return-void
.end method

.method invalidateGlows()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isAttachedToWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isLayoutFrozen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .registers 6

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_21

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 8

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_2d

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_2a

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2d
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 12

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-ge p1, p2, :cond_22

    move v5, p1

    move v1, p2

    const/4 v4, -0x1

    :goto_c
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_3d

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v6, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v6, v5, :cond_26

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_22
    move v5, p2

    move v1, p1

    const/4 v4, 0x1

    goto :goto_c

    :cond_26
    iget v6, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-gt v6, v1, :cond_1f

    iget v6, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_39

    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_33
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1f

    :cond_39
    invoke-virtual {v2, v4, v8}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_33

    :cond_3d
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11

    const/4 v6, 0x1

    add-int v3, p1, p2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_3e

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    iget v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_2f

    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v6, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    iget v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_2c

    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v6, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_2c

    :cond_3e
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iput v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_68

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_13
    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    :cond_1e
    iput-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    sget-boolean v3, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_67

    sget-object v3, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/GapWorker;

    iput-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-nez v3, :cond_62

    new-instance v3, Lcom/android/internal/widget/GapWorker;

    invoke-direct {v3}, Lcom/android/internal/widget/GapWorker;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_52

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_52

    move v2, v1

    :cond_52
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v2

    float-to-long v4, v4

    iput-wide v4, v3, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    sget-object v3, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_62
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/GapWorker;->add(Lcom/android/internal/widget/RecyclerView;)V

    :cond_67
    return-void

    :cond_68
    move v3, v4

    goto :goto_13
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->onDetach()V

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->remove(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    :cond_38
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_14
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_7

    return v5

    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_c

    return v5

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_4f

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    :goto_2b
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_51

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_39
    cmpl-float v3, v2, v6

    if-nez v3, :cond_41

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_4e

    :cond_41
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_4e
    return v5

    :cond_4f
    const/4 v2, 0x0

    goto :goto_2b

    :cond_51
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    return v12

    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    const/4 v12, 0x1

    return v12

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v12, :cond_1b

    const/4 v12, 0x0

    return v12

    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_39

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_39
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    packed-switch v1, :pswitch_data_1ae

    :cond_4d
    :goto_4d
    :pswitch_4d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1aa

    const/4 v12, 0x1

    :goto_55
    return v12

    :pswitch_56
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v12, :cond_61

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_61
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    :cond_a1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v14, v13, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v8, 0x0

    if-eqz v3, :cond_b5

    const/4 v8, 0x1

    :cond_b5
    if-eqz v4, :cond_b9

    or-int/lit8 v8, v8, 0x2

    :cond_b9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_4d

    :pswitch_bf
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_4d

    :pswitch_ef
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    if-gez v7, :cond_122

    const-string/jumbo v12, "RecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error processing scroll; pointer index for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_122
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v10, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v11, v12

    const/4 v9, 0x0

    if-eqz v3, :cond_168

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_168

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_190

    const/4 v12, -0x1

    :goto_161
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    const/4 v9, 0x1

    :cond_168
    if-eqz v4, :cond_186

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_186

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_192

    const/4 v12, -0x1

    :goto_17f
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    const/4 v9, 0x1

    :cond_186
    if-eqz v9, :cond_4d

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_4d

    :cond_190
    const/4 v12, 0x1

    goto :goto_161

    :cond_192
    const/4 v12, 0x1

    goto :goto_17f

    :pswitch_194
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_4d

    :pswitch_199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_4d

    :pswitch_1a5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_4d

    :cond_1aa
    const/4 v12, 0x0

    goto/16 :goto_55

    nop

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_56
        :pswitch_199
        :pswitch_ef
        :pswitch_1a5
        :pswitch_4d
        :pswitch_bf
        :pswitch_194
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_c
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    if-eqz v3, :cond_77

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v2, v8, :cond_31

    if-ne v0, v8, :cond_2f

    const/4 v1, 0x1

    :goto_1f
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    if-nez v1, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v3, :cond_33

    :cond_2e
    return-void

    :cond_2f
    const/4 v1, 0x0

    goto :goto_1f

    :cond_31
    const/4 v1, 0x0

    goto :goto_1f

    :cond_33
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v3, v7, :cond_3c

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    :cond_3c
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v7, v3, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v7, v3, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    return-void

    :cond_85
    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v3, :cond_a4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_c6

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v7, v3, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_9f
    iput-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_a4
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    :goto_b2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v6, v3, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_76

    :cond_c6
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v6, v3, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_9f

    :cond_d0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v6, v3, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    goto :goto_b2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/android/internal/widget/RecyclerView$SavedState;

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_28
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;->copyFrom(Lcom/android/internal/widget/RecyclerView$SavedState;)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_13

    :cond_21
    iput-object v2, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_13
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onScrolled(II)V
    .registers 3

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    :cond_10
    const/16 v18, 0x0

    return v18

    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    const/16 v18, 0x1

    return v18

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_2a

    const/16 v18, 0x0

    return v18

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_50

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_50
    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v3, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v19, v21

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v3, :pswitch_data_3a0

    :cond_9f
    :goto_9f
    :pswitch_9f
    if-nez v9, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_ac
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    const/16 v18, 0x1

    return v18

    :pswitch_b2
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    const/4 v11, 0x0

    if-eqz v5, :cond_f8

    const/4 v11, 0x1

    :cond_f8
    if-eqz v6, :cond_fc

    or-int/lit8 v11, v11, 0x2

    :cond_fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_9f

    :pswitch_102
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_9f

    :pswitch_146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    if-gez v10, :cond_180

    const-string/jumbo v18, "RecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    return v18

    :cond_180
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_231

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    :cond_231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_285

    const/4 v12, 0x0

    if-eqz v5, :cond_25d

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_25d

    if-lez v7, :cond_2ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    :goto_25c
    const/4 v12, 0x1

    :cond_25d
    if-eqz v6, :cond_27a

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_27a

    if-lez v8, :cond_2f9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    :goto_279
    const/4 v12, 0x1

    :cond_27a
    if-eqz v12, :cond_285

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    :cond_285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    if-eqz v5, :cond_303

    move/from16 v19, v7

    :goto_2bb
    if-eqz v6, :cond_308

    move/from16 v18, v8

    :goto_2bf
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2d4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9f

    if-nez v7, :cond_2e0

    if-eqz v8, :cond_9f

    :cond_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    goto/16 :goto_9f

    :cond_2ef
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto/16 :goto_25c

    :cond_2f9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto/16 :goto_279

    :cond_303
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_2bb

    :cond_308
    const/16 v18, 0x0

    goto :goto_2bf

    :pswitch_30b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9f

    :pswitch_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v5, :cond_392

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    :goto_34d
    if-eqz v6, :cond_394

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    :goto_364
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_370

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_397

    :cond_370
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->fling(II)Z

    move-result v18

    :goto_382
    if-nez v18, :cond_38d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    :cond_38d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    goto/16 :goto_9f

    :cond_392
    const/4 v15, 0x0

    goto :goto_34d

    :cond_394
    const/16 v17, 0x0

    goto :goto_364

    :cond_397
    const/16 v18, 0x0

    goto :goto_382

    :pswitch_39a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_9f

    nop

    :pswitch_data_3a0
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_310
        :pswitch_146
        :pswitch_39a
        :pswitch_9f
        :pswitch_102
        :pswitch_30b
    .end packed-switch
.end method

.method postAnimationRunner()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_10
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 7

    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_2b
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_19
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method repositionShadowingViews()V
    .registers 10

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_41

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v7, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_3e

    iget-object v7, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_31

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_3e

    :cond_31
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_41
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3, p0, v4, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_62

    if-eqz p2, :cond_62

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_4f

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-boolean v3, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v3, :cond_4f

    iget-object v1, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_4f
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_62
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 6

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_17

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_d
.end method

.method resumeRequestLayout(Z)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_8

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    :cond_8
    if-nez p1, :cond_c

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_c
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_2d

    if-eqz p1, :cond_27

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    :cond_27
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2d

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    return-void
.end method

.method saveOldPositions()V
    .registers 5

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_10

    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_15

    return-void

    :cond_15
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_25

    if-eqz v1, :cond_2c

    :cond_25
    if-eqz v0, :cond_2d

    :goto_27
    if-eqz v1, :cond_2f

    :goto_29
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_2c
    return-void

    :cond_2d
    move p1, v2

    goto :goto_27

    :cond_2f
    move p2, v2

    goto :goto_29
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v5, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    sub-int v3, p1, v1

    :cond_27
    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v5, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    sub-int v4, p2, v2

    :cond_35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_41
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_4c
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    if-eqz p3, :cond_76

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_76
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    :cond_8c
    :goto_8c
    if-nez v1, :cond_90

    if-eqz v2, :cond_93

    :cond_90
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_93
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_9c
    if-nez v1, :cond_a0

    if-eqz v2, :cond_bc

    :cond_a0
    move v0, v6

    :goto_a1
    return v0

    :cond_a2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8c

    if-eqz p3, :cond_b8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Lcom/android/internal/widget/RecyclerView;->pullGlows(FFFF)V

    :cond_b8
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_8c

    :cond_bc
    move v0, v7

    goto :goto_a1
.end method

.method public scrollTo(II)V
    .registers 5

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0

    :cond_f
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setClipToPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    :cond_13
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .registers 5

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_2d

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2d
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lcom/android/internal/widget/RecyclerView$ItemAnimator;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_f
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1c
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 12

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_22

    const-string/jumbo v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_23

    iput-boolean v7, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    :cond_20
    iput-boolean v7, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v9, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    iput-boolean v9, p0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    goto :goto_22
.end method

.method public setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    :cond_34
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    :goto_3b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->removeAllViewsUnfiltered()V

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_83

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_75

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    goto :goto_3b

    :cond_75
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    :cond_83
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOnFlingListener(Lcom/android/internal/widget/RecyclerView$OnFlingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lcom/android/internal/widget/RecyclerView$RecyclerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    packed-switch p1, :pswitch_data_3a

    const-string/jumbo v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    :goto_32
    return-void

    :pswitch_33
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    goto :goto_32

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    :cond_e
    if-nez v0, :cond_11

    const/4 v0, 0x0

    :cond_11
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x1

    return v1

    :cond_18
    return v2
.end method

.method public smoothScrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_e

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 p1, 0x0

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p2, 0x0

    :cond_25
    if-nez p1, :cond_29

    if-eqz p2, :cond_2e

    :cond_29
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_2e
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_13

    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V

    return-void
.end method

.method public stopScroll()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public swapAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 11

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    add-int v4, p1, p2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_39

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_20
    iget v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1d

    iget v5, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_1d

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1d

    :cond_39
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
