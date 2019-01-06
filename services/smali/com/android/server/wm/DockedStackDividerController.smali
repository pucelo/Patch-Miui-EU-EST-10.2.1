.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private final mDimLayer:Lcom/android/server/wm/DimLayer;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field mLastAnimationProgress:F

.field mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mTaskHeightInMinimizedMode:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static synthetic -com_android_server_wm_DockedStackDividerController-mthref-0(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    const-string/jumbo v4, "DockedStackDim"

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .registers 12

    const/high16 v7, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_9

    return p3

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v5, p2

    sub-float v6, v7, p2

    mul-float/2addr v6, v2

    add-float v0, v5, v6

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float v5, p2, v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v5, v0, v3

    sub-float v6, v7, v3

    mul-float/2addr v6, p3

    add-float v4, v5, v6

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v4, 0x0

    :cond_37
    return v4
.end method

.method private animateForIme(J)Z
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v2, :cond_1c

    :cond_c
    iput-boolean v8, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    const/high16 v3, 0x438c0000    # 280.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    :cond_1c
    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_57

    sget-object v2, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_31
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->animateForIme(FFF)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_48
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_5a

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput-boolean v7, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    return v7

    :cond_57
    sget-object v2, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_31

    :cond_5a
    return v8
.end method

.method private animateForMinimizedDockedStack(J)Z
    .registers 12

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-nez v2, :cond_1c

    iput-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    :cond_1c
    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_31
    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    if-eqz v0, :cond_48

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_48
    cmpl-float v2, v1, v7

    if-ltz v2, :cond_52

    iput-boolean v8, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    return v8

    :cond_4f
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_31

    :cond_52
    return v6
.end method

.method private checkMinimizeChanged(Z)V
    .registers 13

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    if-nez v9, :cond_a

    return-void

    :cond_a
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-nez v3, :cond_13

    return-void

    :cond_13
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_22

    :cond_21
    return-void

    :cond_22
    iget-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v9, :cond_31

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v9

    if-eqz v9, :cond_31

    return-void

    :cond_31
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v9

    if-eqz v9, :cond_75

    const/4 v5, 0x1

    :goto_3e
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v6

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v9

    if-nez v9, :cond_77

    :cond_4d
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->hasMultipleTaskWithHomeTaskNotTop()Z

    move-result v9

    if-nez v9, :cond_77

    if-eqz v6, :cond_79

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    :goto_59
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    :goto_5f
    if-eqz v1, :cond_6b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopVisibleTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_7d

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v1

    :cond_6b
    :goto_6b
    if-eqz v5, :cond_71

    xor-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_7f

    :cond_71
    :goto_71
    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    return-void

    :cond_75
    const/4 v5, 0x0

    goto :goto_3e

    :cond_77
    const/4 v2, 0x1

    goto :goto_59

    :cond_79
    const/4 v2, 0x0

    goto :goto_59

    :cond_7b
    const/4 v1, 0x0

    goto :goto_5f

    :cond_7d
    const/4 v1, 0x0

    goto :goto_6b

    :cond_7f
    move v1, v8

    goto :goto_71
.end method

.method private clearImeAdjustAnimation()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->clearImeAdjustAnimation()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_7
    if-ltz v0, :cond_25

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    const/4 v2, 0x1

    return v2

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_25
    return v4
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .registers 9

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez p1, :cond_e

    :cond_d
    return v5

    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v0, v3, v4

    const/4 v3, 0x0

    sub-float v4, v0, v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v5, v2

    const v4, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v3, v4

    const v4, 0x3f19999a    # 0.6f

    add-float/2addr v3, v4

    return v3
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result v1

    return v1

    :cond_f
    return v0
.end method

.method private getResizeDimLayer()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v0, v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private initSnapAlgorithmForRotations()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    new-instance v19, Landroid/content/res/Configuration;

    invoke-direct/range {v19 .. v19}, Landroid/content/res/Configuration;-><init>()V

    const/4 v6, 0x0

    :goto_e
    const/4 v3, 0x4

    if-ge v6, v3, :cond_116

    const/4 v3, 0x1

    if-eq v6, v3, :cond_17

    const/4 v3, 0x3

    if-ne v6, v3, :cond_fd

    :cond_17
    const/16 v21, 0x1

    :goto_19
    if-eqz v21, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_21
    if-eqz v21, :cond_109

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v3, v6, v4, v5, v7}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Configuration;->unset()V

    if-gt v4, v5, :cond_111

    const/4 v3, 0x1

    :goto_3c
    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v3, v6, v4, v5, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v3, v20, v17

    add-int v7, v23, v16

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/content/res/Configuration;->setAppBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIIII)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v18

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIIII)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v9, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v13

    move-object/from16 v0, v19

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v7, v11, :cond_114

    const/4 v14, 0x1

    :goto_ee
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v11, v4

    move v12, v5

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_fd
    const/16 v21, 0x0

    goto/16 :goto_19

    :cond_101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto/16 :goto_21

    :cond_109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto/16 :goto_29

    :cond_111
    const/4 v3, 0x2

    goto/16 :goto_3c

    :cond_114
    const/4 v14, 0x0

    goto :goto_ee

    :cond_116
    return-void
.end method

.method private isAnimationMaximizing()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private loadDimens()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    return-void
.end method

.method private notifyAdjustedForImeChanged(ZJ)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_22

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_17
    move-exception v0

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering adjusted for ime changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyDockedDividerVisibilityChanged(Z)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_22

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_17
    move-exception v0

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering divider visibility changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyDockedStackMinimizedChanged(ZZZ)V
    .registers 19

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_31

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v9

    if-eqz v9, :cond_66

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v10

    :goto_19
    long-to-float v9, v10

    iget-object v12, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v12

    mul-float/2addr v9, v12

    float-to-long v12, v9

    iput-wide v12, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    invoke-direct {p0, v8}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result v9

    iput v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    iget-wide v12, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v9, v12

    iget v12, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr v9, v12

    float-to-long v2, v9

    :cond_31
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v12, 0x35

    invoke-virtual {v9, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    if-eqz p1, :cond_69

    const/4 v9, 0x1

    :goto_41
    const/16 v13, 0x35

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v9, v14}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    const/4 v5, 0x0

    :goto_52
    if-ge v5, v7, :cond_76

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/view/IDockedStackListener;

    :try_start_5c
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v6, v0, v2, v3, v1}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_6b

    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_66
    const-wide/16 v10, 0xfa

    goto :goto_19

    :cond_69
    const/4 v9, 0x0

    goto :goto_41

    :catch_6b
    move-exception v4

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v12, "Error delivering minimized dock changed event."

    invoke-static {v9, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    :cond_76
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private resetDragResizingChangeReported()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$2:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .registers 10

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-ne p1, v2, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    const/4 v1, 0x1

    :goto_1a
    if-nez v0, :cond_1e

    if-eqz v1, :cond_4f

    :cond_1e
    if-eqz v0, :cond_48

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_48

    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " minimizedChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_4f
    return-void

    :cond_50
    if-eqz p1, :cond_5d

    if-eqz p2, :cond_58

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_1a

    :cond_58
    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v1

    goto :goto_1a

    :cond_5d
    if-eqz p2, :cond_63

    invoke-direct {p0, v6, v5}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_1a

    :cond_63
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v1

    goto :goto_1a
.end method

.method private setMinimizedDockedStack(Z)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    if-eqz v0, :cond_18

    if-eqz p1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_14
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v1

    :cond_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private startAdjustAnimation(FF)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .registers 9

    const/16 v4, 0x18

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_d
    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v0, :cond_7e

    move v0, v1

    :goto_15
    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    :goto_20
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-eqz p1, :cond_89

    move v0, v1

    :goto_27
    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    if-eqz p2, :cond_2d

    move v2, v1

    :cond_2d
    int-to-float v0, v2

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->beginImeAdjustAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz p3, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    :cond_5e
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->startDelayingAnimationStart()V

    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$Lambda$HFbYE8vr4-NA3Y6wUONVd47OH54;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/server/wm/-$Lambda$HFbYE8vr4-NA3Y6wUONVd47OH54;-><init>(ZZLjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    :goto_7b
    return-void

    :cond_7c
    move v0, v2

    goto :goto_d

    :cond_7e
    move v0, v2

    goto :goto_15

    :cond_80
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    goto :goto_20

    :cond_89
    move v0, v2

    goto :goto_27

    :cond_8b
    if-nez p1, :cond_8e

    move v1, p2

    :cond_8e
    const-wide/16 v2, 0x118

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    goto :goto_7b
.end method

.method private wasVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method


# virtual methods
.method public animate(J)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_6

    return v2

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result v0

    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_18

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result v0

    return v0

    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->getResizeDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    :cond_2d
    return v2
.end method

.method public dimFullscreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mLastVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mMinimizedDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mAdjustedForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mAdjustedForDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_c3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  Dim layer is dimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c3
    return-void
.end method

.method getContentInsets()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .registers 3

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method getContentWidthInactive()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getHomeStackBoundsInDockedMode(Landroid/graphics/Rect;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v4, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v7, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v8, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_38
    return-void

    :cond_39
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3, v8, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_38
.end method

.method getImeHeightAdjustedFor()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getInterpolatedAnimationValue(F)F
    .registers 5

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getInterpolatedDividerValue(F)F
    .registers 5

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .registers 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const v10, 0x7fffffff

    const/4 v14, 0x0

    :goto_18
    const/4 v3, 0x4

    if-ge v14, v3, :cond_e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v9, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v14, v5}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    const/4 v3, 0x1

    if-eq v14, v3, :cond_37

    const/4 v3, 0x3

    if-ne v14, v3, :cond_d9

    :cond_37
    const/4 v13, 0x1

    :goto_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    if-eqz v13, :cond_dc

    move v4, v7

    :goto_3f
    if-eqz v13, :cond_df

    move v3, v8

    :goto_42
    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v6, v15, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_e2

    const/4 v11, 0x1

    :goto_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v3, v4, v11}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v3, v3, v14

    invoke-virtual {v3, v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    invoke-interface {v3, v14, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_18

    :cond_d9
    const/4 v13, 0x0

    goto/16 :goto_38

    :cond_dc
    move v4, v8

    goto/16 :goto_3f

    :cond_df
    move v3, v7

    goto/16 :goto_42

    :cond_e2
    const/4 v11, 0x2

    goto/16 :goto_5a

    :cond_e5
    int-to-float v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public isAttachedToDisplay()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isHomeStackResizable()Z
    .registers 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    :cond_14
    return v2
.end method

.method isImeHideRequested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_DockedStackDividerController_34212(ZZ)V
    .registers 8

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    :cond_e
    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v2, p1, :cond_24

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v2, p2, :cond_24

    const-wide/16 v0, 0x118

    :goto_1a
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez v2, :cond_63

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    :goto_20
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    return-void

    :cond_24
    sget-object v2, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " adjustedForDivider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mAdjustedForIme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mAdjustedForDivider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_63
    const/4 v2, 0x1

    goto :goto_20
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    const/16 v6, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    if-eqz v2, :cond_4f

    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v3, :cond_4f

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result v3

    if-eqz v3, :cond_4f

    if-eqz p2, :cond_4f

    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v4, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_4a
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    :cond_4f
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    return-void
.end method

.method notifyDockSideChanged(I)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_22

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_17
    move-exception v0

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering dock side changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .registers 10

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v4, :cond_23

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDockedStackListener;

    :try_start_12
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_18
    move-exception v0

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Error delivering docked stack exists changed event."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_23
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-nez p1, :cond_2e

    invoke-direct {p0, v7, v7}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const-class v5, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    goto :goto_2d
.end method

.method onConfigurationChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    :goto_1a
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :pswitch_20
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1a

    :pswitch_3b
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1a

    :pswitch_58
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1a

    :pswitch_73
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1a

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_3b
        :pswitch_58
        :pswitch_73
    .end packed-switch
.end method

.method reevaluateVisibility(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :goto_e
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v2, v1, :cond_19

    xor-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_19

    return-void

    :cond_17
    const/4 v1, 0x0

    goto :goto_e

    :cond_19
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    if-nez v1, :cond_26

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    :cond_26
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    return-void

    :cond_2a
    move v0, v1

    goto :goto_16
.end method

.method resetImeHideRequested()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_a

    if-eqz p1, :cond_1c

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-eq v0, p5, :cond_1c

    :cond_a
    :goto_a
    if-eqz p3, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    :goto_15
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    :cond_1b
    return-void

    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_1b

    goto :goto_a

    :cond_21
    if-nez p1, :cond_2a

    move v0, p2

    :goto_24
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    goto :goto_15

    :cond_2a
    const/4 v0, 0x1

    goto :goto_24
.end method

.method setResizeDimLayer(ZIF)V
    .registers 12

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz p1, :cond_4e

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    const/4 v2, 0x1

    :goto_18
    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_50

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_50

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->getResizeDimLayer()I

    move-result v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, p3, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_41
    :goto_41
    if-nez v2, :cond_48

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->hide()V

    :cond_48
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :cond_4e
    const/4 v2, 0x0

    goto :goto_18

    :cond_50
    const/4 v2, 0x0

    goto :goto_41
.end method

.method setResizing(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    :cond_9
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    return-object v0
.end method
