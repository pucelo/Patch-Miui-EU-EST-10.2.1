.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$1;,
        Lcom/android/systemui/recents/views/TaskStackView$2;,
        Lcom/android/systemui/recents/views/TaskStackView$3;,
        Lcom/android/systemui/recents/views/TaskStackView$InitialStateAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static sIsChangingConfigurations:Z


# instance fields
.field private mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field private mAwaitingFirstLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

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

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

.field private mDisplayOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDividerSize:I

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "focused_task_"
    .end annotation
.end field

.field private mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mIsMultiStateChanging:Z

.field private mIsShowingMenu:Z

.field private mKeepAlphaWhenRelayout:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mMaskWithMenu:Landroid/widget/FrameLayout;

.field private mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mResetToInitialStateWhenResized:Z

.field mScreenPinningEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field private mStableStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mStackReloaded:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mStartTimerIndicatorDuration:I

.field private mTaskCornerRadiusPx:I

.field private mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskViewsClipDirty:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTmpIntPair:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViewMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "doze_"
    .end annotation
.end field

.field private mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/TaskStackView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/misc/DozeTrigger;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/TaskStackView;IZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/views/TaskStackView;->sIsChangingConfigurations:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIsMultiStateChanging:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mKeepAlphaWhenRelayout:Z

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIsShowingMenu:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    new-instance v3, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    const v3, 0x7f0703d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v3, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080326

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06013a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v6, v6}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V
    .locals 6

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method private clipTaskViews()V
    .locals 0

    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I
    .locals 7

    const/4 v6, -0x1

    if-eq p2, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_0

    if-eqz v0, :cond_2

    add-int/lit8 v5, v1, -0x1

    return v5

    :cond_2
    return v1

    :cond_3
    return v6
.end method

.method private getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4

    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private layoutMaskView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V
    .locals 7

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v5

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    goto :goto_0
.end method

.method private measureMaskView(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->measureChild(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    return-void
.end method

.method private readSystemFlags()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "lock_to_app_enabled"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    return-void
.end method

.method private relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    invoke-virtual {p0, v8, p3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "current task :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " topActivity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n stack :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    const-string/jumbo v10, "relayoutTaskViews_ArrayIndexOutOfBoundsException"

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "TaskStackView"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "relayoutTaskViews_ArrayIndexOutOfBoundsException"

    invoke-static {v8, v0}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v9, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, v2, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mKeepAlphaWhenRelayout:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v8

    iput v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/views/AnimationProps;

    :cond_4
    invoke-virtual {p0, v7, v6, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setFocusedTask(IZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v0

    return v0
.end method

.method private setFocusedTask(IZZI)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v6, v5}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    :goto_0
    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_1

    if-lez p4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_1
    const/4 v4, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_4

    if-lez p4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    :cond_2
    :goto_2
    if-eqz p2, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v5, v0, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z

    move-result v4

    :cond_4
    :goto_3
    return v4

    :cond_5
    const/4 v1, -0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iput p4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v2, v5, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    goto :goto_3
.end method

.method public static setIsChangingConfigurations(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/recents/views/TaskStackView;->sIsChangingConfigurations:Z

    return-void
.end method

.method private tryStartEnterAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/recents/views/TaskStackView;->sIsChangingConfigurations:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackView$8;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    return-void
.end method

.method private unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method private updateLayoutToStableBounds()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bindVisibleTaskViews(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    return-void
.end method

.method bindVisibleTaskViews(FZ)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    move-object/from16 v3, p0

    move/from16 v7, p1

    move/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v23

    const/16 v18, -0x1

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v16, v22, -0x1

    :goto_0
    if-ltz v16, :cond_6

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v21

    const/16 v24, 0x0

    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    :cond_1
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_5

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v18, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    :goto_3
    if-ltz v16, :cond_e

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    :goto_5
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    :cond_8
    const/16 v24, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_5

    :cond_b
    new-instance v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v11}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move/from16 v0, v16

    int-to-float v7, v0

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getOldStackScroll()F

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    const/4 v3, 0x1

    iput-boolean v3, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v25

    if-ne v0, v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    goto/16 :goto_5

    :cond_e
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_f

    const/4 v3, 0x1

    aget v3, v26, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_10

    const/4 v3, 0x1

    aget v19, v26, v3

    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v15

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    :cond_f
    return-void

    :cond_10
    const/4 v3, 0x0

    aget v19, v26, v3

    goto :goto_6
.end method

.method cancelAllTaskViewAnimations()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    return-void
.end method

.method public computeScroll()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    :cond_2
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;FF",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;Z)[I"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    const/4 v1, -0x1

    const/4 v3, 0x0

    aput v1, v13, v3

    const/4 v1, -0x1

    const/4 v3, 0x1

    aput v1, v13, v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v8, v9, -0x1

    :goto_1
    if-ltz v8, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    move/from16 v3, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    if-eqz v12, :cond_0

    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v11

    iget-boolean v1, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    :cond_0
    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v5, v10

    move-object v7, v11

    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget v1, v13, v1

    if-gez v1, :cond_4

    const/4 v1, 0x0

    aput v8, v13, v1

    :cond_4
    const/4 v1, 0x1

    aput v8, v13, v1

    goto :goto_2

    :cond_5
    return-object v13
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "TaskStackView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " hasDefRelayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " clipDirty="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Y"

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " initialState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " inMeasureLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Y"

    :goto_3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " enterAnimCompleted="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Y"

    :goto_4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " touchExplorationOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Y"

    :goto_5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " screenPinningOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "Y"

    :goto_6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " numIgnoreTasks="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " numViewPool="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " stableStackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " stackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " stableWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " window="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " display="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " orientation="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Focused task: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const-string/jumbo v2, "N"

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "N"

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "N"

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v2, "N"

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v2, "N"

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v2, "N"

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v2, "N"

    goto/16 :goto_6
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    return-object v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    return-object v5

    :cond_2
    return-object v6
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    :goto_1
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_1

    :cond_1
    return-void
.end method

.method getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-static {p3, p5}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMask()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mMaskWithMenu:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowingMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIsShowingMenu:Z

    return v0
.end method

.method public isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public launchFreeformTasks()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getFreeformTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v5
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;I)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mKeepAlphaWhenRelayout:Z

    :cond_0
    return-void

    :cond_1
    iget v1, p1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ClickTaskViewToLaunchTaskEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/ClickTaskViewToLaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    const-string/jumbo v1, "clickToSwitch"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->setAllowHideRecentsFromBackgroundTap(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 4

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->onConfigurationChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    const/16 v0, 0x15e

    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->tryStartEnterAnimation()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskView;->onLaunchNextTask()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v9

    if-eq v9, v4, :cond_2

    add-int/lit8 v0, v9, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v5, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v9

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v5, v3, v5}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_0

    :cond_3
    if-eq v9, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    const/4 v10, 0x0

    const/4 v0, 0x0

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_4

    const v0, 0x3eb33333    # 0.35f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_5

    :cond_4
    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v0, v6

    const/high16 v1, 0x43580000    # 216.0f

    add-float/2addr v0, v1

    float-to-int v8, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v10, v8, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13e

    invoke-static {v0, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v12

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v12, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIsMultiStateChanging:Z

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$9;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v5, v2, v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->setAllowHideRecentsFromBackgroundTap(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RotationChangedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p1, Lcom/android/systemui/recents/events/activity/RotationChangedEvent;->rotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updatePaddingOfNotch(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p1, Lcom/android/systemui/recents/events/activity/RotationChangedEvent;->rotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updatePaddingOfNotch(I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 4

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "TaskStackView"

    const-string/jumbo v4, "removeAllTask, cleanByRecents=true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f1100e3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x121

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;->visible:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v9, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v2, 0xfa

    invoke-direct {v9, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    const/4 v10, 0x0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v1, v1, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v1, v2, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iput-boolean v13, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDropToDockState:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v7

    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    invoke-virtual {p0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    const/4 v10, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iput-boolean v12, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDropToDockState:Z

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 6

    const/16 v5, 0xfa

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v5, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 8

    const/16 v7, 0xfa

    const/4 v6, 0x1

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v3, v3, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    return-void

    :cond_0
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$7;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$7;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v7, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    return-void

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v3, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const v1, 0x3f87ae14    # 1.06f

    iput v1, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v4, 0xaf

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    iget v5, p1, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;->timerIndicatorDuration:I

    move-object v0, p0

    move v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method onFirstLayout()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->prepareForEnterAnimation()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    iget v1, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v6, 0x96

    invoke-direct {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->getInitialFocusTaskIndex(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-direct {p0, v2, v7, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v5, v7}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0
.end method

.method public onFocusStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    if-lez v1, :cond_0

    const/16 v4, 0x2000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    const/16 v4, 0x1000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->layoutMaskView()V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_1
    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_2

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->tryStartEnterAnimation()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v12, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIsMultiStateChanging:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v12, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v12, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    invoke-virtual {p0, v12}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    if-ne v11, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    if-eq v7, v0, :cond_6

    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    if-eqz v0, :cond_7

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    iput-boolean v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_5

    iput v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0, v12}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    if-eqz v9, :cond_5

    goto :goto_1

    :cond_8
    invoke-direct {p0, v11, v7}, Lcom/android/systemui/recents/views/TaskStackView;->measureMaskView(II)V

    invoke-virtual {p0, v11, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    iput v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    iput-boolean v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    return-void
.end method

.method public onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v0

    if-eqz p3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/views/TaskView;->setImportantForAccessibility(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v3, p2, :cond_1

    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v5, v5}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-direct {p0, v4, p1}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->onReload(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v3

    iget v0, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0x96

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    goto :goto_1
.end method

.method public onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->findFocus()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->clearChildFocus(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public onStackScrollChanged(FFLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 3

    const v1, 0x3e99999a    # 0.3f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    cmpg-float v0, p2, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v2, p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v2, 0xc8

    invoke-virtual {v0, v5, v2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f110543

    :goto_0
    invoke-direct {v4, v2, v5, p5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZZ)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_4
    return-void

    :cond_5
    const v2, 0x7f110541

    goto :goto_0
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isProtected()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v6, v4}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f110543

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-direct {v7, v4, v5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void

    :cond_6
    const v4, 0x7f110542

    goto :goto_2
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_1
    return v4

    :sswitch_0
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    return v3

    :sswitch_1
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    return-void
.end method

.method public reloadOnConfigurationChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-void
.end method

.method public setIsShowingMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIsShowingMenu:Z

    return-void
.end method

.method public setRelativeFocusedTask(ZZZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    return-void
.end method

.method public setRelativeFocusedTask(ZZZZI)V
    .locals 15

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    if-eqz v1, :cond_6

    if-eqz p2, :cond_4

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v12

    if-eqz v12, :cond_2

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    :cond_0
    :goto_0
    const/4 v12, -0x1

    if-eq v2, v12, :cond_1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v2, v12, v13, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v12, -0x1

    :goto_1
    add-int v9, v2, v12

    if-ltz v9, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v12

    if-nez v12, :cond_0

    move v2, v9

    goto :goto_0

    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz p1, :cond_5

    const/4 v12, -0x1

    :goto_2
    add-int/2addr v12, v2

    add-int/2addr v12, v5

    rem-int v2, v12, v5

    goto :goto_0

    :cond_5
    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz p1, :cond_7

    add-int/lit8 v2, v5, -0x1

    :goto_3
    if-ltz v2, :cond_0

    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-lez v12, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_0

    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-gez v12, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_1
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateToInitialState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
