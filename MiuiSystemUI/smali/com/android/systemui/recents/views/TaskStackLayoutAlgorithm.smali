.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field public mDropToDockState:Z

.field public mFirstTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFreeformStackGap:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mHorizontalGap:I

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIsRtlLayout:Z

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumFreeformTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field private mStatusbarHeight:I

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskViewTop:I

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

.field mVerticalGap:I

.field public mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDropToDockState:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    new-instance v1, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    const v1, 0x7f0703b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const v1, 0x7f0703b8

    const v2, 0x7f0703b9

    const v3, 0x7f0703ba

    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    const v1, 0x7f0703b3

    const v2, 0x7f0703b4

    const v3, 0x7f0703b6

    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    const v1, 0x7f0703aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    const v1, 0x7f0703a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    return-void
.end method

.method private computeTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v0, v8

    mul-float/2addr v0, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    invoke-static {v6, v0}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    iget v0, v6, Landroid/graphics/RectF;->top:F

    sget v1, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->top:F

    iget v9, v6, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewTop:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-virtual {v6, v9, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    :goto_0
    sget v0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f3ae148    # 0.73f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    goto :goto_1
.end method

.method private computeTaskViewPadding(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x3e4ccccd    # 0.2f

    const v0, 0x3e19999a    # 0.15f

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    if-gt p1, v4, :cond_4

    :goto_1
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingBottom:I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x3ea3d70a    # 0.32f

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    if-gt p1, v4, :cond_3

    const v1, 0x3f1eb852    # 0.62f

    :goto_2
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_3
    const v1, 0x3f0ccccd    # 0.55f

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_1
.end method

.method public static getDimensionForDevice(Landroid/content/Context;III)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIII)I
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move p6, p5

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_3
    move p4, p3

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_5
    move p2, p1

    goto :goto_3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 3

    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_3

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_4

    cmpg-float v3, p1, p3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private linearCurve()Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, -0x40400000    # -1.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private updateFrontBackTransforms()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v11

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move v3, v11

    move v4, v11

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V
    .locals 7

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float v3, p2, v4

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v0

    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v5

    add-float v4, p2, v5

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method calculateTaskViewXandY(ILandroid/graphics/Rect;)[I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x2

    new-array v3, v6, [I

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v7

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int v5, v6, v7

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v1, v6, v7

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    add-int v2, v6, v7

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int v5, v6, v7

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v4, v6, v7

    goto :goto_2

    :cond_2
    if-le v1, v4, :cond_3

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v4, v6, v7

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v1, v6, v7

    goto :goto_2

    :cond_4
    if-gt v1, v4, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    if-eqz v6, :cond_6

    if-nez p1, :cond_6

    :cond_5
    aput v5, v3, v8

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    aput v6, v3, v9

    :goto_3
    return-object v3

    :cond_6
    aput v2, v3, v8

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    aput v6, v3, v9

    goto :goto_3
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    :cond_1
    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v12, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/high16 v19, 0x4f000000

    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v14, v3, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v3, :cond_5

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v15

    :goto_3
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move v5, v4

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget-object v3, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-float v3, v20, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    const/4 v13, 0x1

    :goto_4
    if-eqz v13, :cond_7

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v19, v20

    goto :goto_2

    :cond_5
    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    move/from16 v16, v14

    :goto_5
    if-ltz v16, :cond_9

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_8
    if-nez v15, :cond_2

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_9
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " numStackTasks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "insets="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " stack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " task="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " freeform="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " actionButton="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "minScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v5, " maxScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v5, " initialScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "focusState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "taskId= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " x= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v5, " overrideX= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDeltaPForX(II)F
    .locals 3

    sub-int v1, p2, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    mul-float v0, v1, v2

    neg-float v1, v0

    return v1
.end method

.method public getFocusState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p4, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object p4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-object p4

    :cond_2
    if-eqz p7, :cond_3

    int-to-float v1, v9

    :goto_0
    int-to-float v2, v9

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    return-object p4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    const/4 v6, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 6

    float-to-int v3, p1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewXandY(ILandroid/graphics/Rect;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v1, v0, v3

    const/4 v3, 0x1

    aget v2, v0, v3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-float v3, v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    float-to-int v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    const/4 v3, 0x0

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    const/4 v3, 0x0

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    const/4 v3, 0x0

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v4, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v4, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    invoke-virtual {p0, v8, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 8

    const/4 v5, 0x0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p5

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v6

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v1, v6, 0x2

    sub-int v7, v0, v1

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p6, v0, v5}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method getTrueStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewXandY(ILandroid/graphics/Rect;)[I

    move-result-object v1

    aget v2, v1, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    return v2
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getXForDeltaP(FF)I
    .locals 4

    sub-float v1, p2, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    neg-int v1, v0

    return v1
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v8, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v9

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object v0, p4

    move-object v3, p3

    move v4, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p3, p2, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    :cond_0
    return-void
.end method

.method public isDockedMode()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDropToDockState:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLandscapeMode(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 12

    const v11, 0x7f0703d7

    const v10, 0x7f0703d6

    const/4 v8, 0x1

    const v3, 0x7f0703b1

    const v9, 0x7f0703ae

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0b0040

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0b003f

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0b0042

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0b0041

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const v0, 0x7f0703bb

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    const v0, 0x7f0703ab

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    const v0, 0x7f0703bd

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    const v0, 0x7f0703bc

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const v1, 0x7f0703b0

    const v2, 0x7f0703af

    move-object v0, p1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    const v1, 0x7f0703ad

    const v2, 0x7f0703ac

    move-object v0, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    const v1, 0x7f0703d5

    const v2, 0x7f0703d4

    move-object v0, p1

    move v3, v11

    move v4, v10

    move v5, v11

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewTop:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStatusbarHeight:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    return-void
.end method

.method public setFocusState(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return v0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_2

    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v10

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    if-nez p2, :cond_0

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_1

    xor-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_1

    :cond_0
    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v4

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_3

    const/4 v10, 0x2

    new-array v2, v10, [F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_1

    sub-int v10, v8, v0

    add-int/lit8 v1, v10, -0x1

    array-length v10, v2

    if-lt v1, v10, :cond_4

    :cond_1
    return-void

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x2

    new-array v2, v10, [F

    const/4 v10, 0x0

    aput v5, v2, v10

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    goto :goto_1

    :cond_4
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v12, v2, v1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v11

    add-float v6, v10, v11

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    iget-object v9, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {p2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v9, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v9, v0, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    :cond_5
    invoke-direct {p0, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeTaskViewPadding(I)V

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-lez v9, :cond_6

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewXandY(ILandroid/graphics/Rect;)[I

    move-result-object v3

    const/4 v9, 0x1

    aget v9, v3, v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingBottom:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    :goto_3
    return-void

    :cond_6
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    goto :goto_3
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 5

    cmpl-float v4, p2, p3

    if-nez v4, :cond_0

    return p2

    :cond_0
    sub-float v0, p2, p3

    sub-float v1, p2, p1

    move v3, p2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    return p2
.end method

.method public updatePaddingOfNotch(I)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStatusbarHeight:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStatusbarHeight:I

    :cond_0
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
