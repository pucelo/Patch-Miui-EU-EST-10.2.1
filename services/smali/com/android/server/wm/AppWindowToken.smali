.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field allDrawn:Z

.field allDrawnExcludingSaved:Z

.field final appToken:Landroid/view/IApplicationToken;

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field layoutConfigChanges:Z

.field private mAlwaysFocusable:Z

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mAppStopped:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanTurnScreenOn:Z

.field private mClientHidden:Z

.field mDeferHidingClient:Z

.field private mDisablePreviewScreenshots:Z

.field mEnteringAnimation:Z

.field private mFillsParent:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenSetFromTransferredStartingWindow:Z

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mInputDispatchingTimeoutNanos:J

.field mIsExiting:Z

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field mLastParent:Lcom/android/server/wm/Task;

.field private mLastTransactionSequence:J

.field mLaunchTaskBehind:Z

.field private mNumDrawnWindows:I

.field private mNumDrawnWindowsExcludingSaved:I

.field private mNumInterestingWindows:I

.field private mNumInterestingWindowsExcludingSaved:I

.field private mPendingRelaunchCount:I

.field private mRemovingFromDisplay:Z

.field private mReparenting:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRotationAnimationHint:I

.field mShowForAllUsers:Z

.field mTargetSdk:I

.field final mVoiceInteraction:Z

.field removed:Z

.field private reportedDrawn:Z

.field reportedVisible:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

.field startingWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static synthetic -com_android_server_wm_AppWindowToken-mthref-0(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 27

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V

    move-object/from16 v0, p15

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setController(Lcom/android/server/wm/WindowContainerController;)V

    iput-wide p5, p0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x480

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    :goto_28
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    return-void

    :cond_3d
    const/4 v1, 0x0

    goto :goto_28
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 15

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_9
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    new-instance v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    iput-boolean p5, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz p6, :cond_4d

    invoke-virtual {p0, p6}, Lcom/android/server/wm/AppWindowToken;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_4d
    if-eqz p7, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_54
    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_25

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    return v3

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_25
    const/4 v2, 0x1

    return v2
.end method

.method private canRestoreSurfaces()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canRestoreSurface()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    return v3
.end method

.method private clearWasVisibleBeforeClientHidden()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWasVisibleBeforeClientHidden()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private destroySurfaces(Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_9
    if-ltz v2, :cond_1d

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v4

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_1d
    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_27
    return-void
.end method

.method private freezeBounds()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    :goto_28
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method static synthetic lambda$-com_android_server_wm_AppWindowToken_69142(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private unfreezeBounds()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_23
    if-ltz v0, :cond_33

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method private waitingForReplacement()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1e
    return v3
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_c
    if-ltz v2, :cond_1e

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_1e
    if-eqz v1, :cond_25

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    return-void
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 1

    return-object p0
.end method

.method canTurnScreenOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return v0
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    const-string/jumbo v0, "checkAppWindowsReadyToShow: freezingScreen"

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const-string/jumbo v0, "checkAppWindowsReadyToShow"

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    goto :goto_2b
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    :cond_7
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method checkKeyguardFlagsChanged()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_16

    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    :cond_16
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return-void
.end method

.method clearAllDrawn()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    return-void
.end method

.method clearAnimatingFlags()V
    .registers 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-ltz v0, :cond_1b

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1b
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    :cond_20
    return-void
.end method

.method clearRelaunching()V
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    return-void
.end method

.method clearWillReplaceWindows()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method containsDismissKeyguardWindow()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    return v1

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_12
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_2a
    return v3
.end method

.method containsShowWhenLockedWindow()Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return v1

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_12
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_2a
    return v3
.end method

.method destroySavedSurfaces()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method destroySurfaces()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "app=true mVoiceInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mFillsParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mClientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_24d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mDeferHidingClient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reportedDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_c1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_c1
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v0, :cond_d3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppStopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_d3
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-nez v0, :cond_db

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-eqz v0, :cond_252

    :cond_db
    :goto_db
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mNumDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " (animator="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11d
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_12f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_12f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_13f

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_13f

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_13f

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_16e

    :cond_13f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_16e
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_176

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_25e

    :cond_176
    :goto_176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " startingSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " startingMoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1be
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrozenBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrozenMergedConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1e2
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz v0, :cond_1f4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingRelaunchCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1f4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_20a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "controller="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_20a
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_22b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mRemovingFromDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_24c

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_24c
    return-void

    :cond_24d
    const-string/jumbo v0, ""

    goto/16 :goto_8a

    :cond_252
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_11d

    goto/16 :goto_db

    :cond_25e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_176

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v0, :cond_176

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_1be

    goto/16 :goto_176
.end method

.method fillsParent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :cond_7
    :goto_7
    if-lez v1, :cond_24

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1d

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    :cond_1d
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v4, :cond_23

    move-object v0, v3

    goto :goto_7

    :cond_23
    return-object v3

    :cond_24
    return-object v0
.end method

.method finishRelaunching()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    goto :goto_d
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method getAnimLayerAdjustment()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getController()Lcom/android/server/wm/AppWindowContainerController;
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Lcom/android/server/wm/AppWindowContainerController;

    :goto_9
    return-object v0

    :cond_a
    move-object v0, v1

    goto :goto_9
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    return-object v0
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_7
    if-ltz v1, :cond_26

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_18

    :cond_15
    :goto_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_18
    if-eqz v0, :cond_24

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v3, v4, :cond_15

    :cond_24
    move-object v0, v2

    goto :goto_15

    :cond_26
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    const/4 v2, 0x0

    return-object v2
.end method

.method getLowestAnimLayer()I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v2

    :cond_1d
    const v2, 0x7fffffff

    return v2
.end method

.method getOrientation(I)I
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    if-ne p1, v6, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyVisible:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v3

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v2, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v1

    :cond_33
    :goto_33
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    :cond_41
    xor-int/lit8 v3, v1, 0x1

    :goto_43
    if-nez v3, :cond_82

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyVisible:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_63

    :cond_53
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_82

    :cond_63
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0x797c

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget v3, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v3

    :cond_7c
    const/4 v1, 0x1

    goto :goto_33

    :cond_7e
    const/4 v1, 0x0

    goto :goto_33

    :cond_80
    move v3, v4

    goto :goto_43

    :cond_82
    const/4 v3, -0x2

    return v3
.end method

.method getOrientationIgnoreVisibility()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    :cond_a
    return-object v1
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTopFullscreenWindow()Lcom/android/server/wm/WindowState;
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_21
    return-object v3
.end method

.method hasBounds()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasWindowsAlive()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1c
    return v2
.end method

.method isAnimatingInvisibleWithSavedSurface()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    return v3
.end method

.method isClientHidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v3, :cond_10

    if-eq v1, v3, :cond_10

    return v5

    :cond_10
    if-eq v0, v3, :cond_15

    if-ne v1, v3, :cond_15

    return v3

    :cond_15
    if-ne v0, v4, :cond_1a

    if-eq v1, v4, :cond_1a

    return v3

    :cond_1a
    if-eq v0, v4, :cond_1f

    if-ne v1, v4, :cond_1f

    return v5

    :cond_1f
    return v3
.end method

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ne v2, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method isRelaunching()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method markSavedSurfaceExiting()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->markSavedSurfaceExiting()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method notifyAppResumed(Z)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    if-nez p1, :cond_c

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    :cond_c
    return-void
.end method

.method notifyAppStopped()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_13
    return-void
.end method

.method public onAppFreezeTimeout()V
    .registers 5

    const/4 v3, 0x1

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Force clearing freeze: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v3}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    return-void
.end method

.method onAppTransitionDone()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    return-void
.end method

.method onOverrideConfigurationChanged(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onResize()V

    return-void
.end method

.method onParentSet()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onParentSet()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method onRemovedFromDisplay()V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    const/4 v3, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    const/4 v6, 0x1

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-eqz v6, :cond_ab

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ab

    if-eqz v7, :cond_73

    iget-object v0, v7, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    :cond_73
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    :goto_75
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p0, :cond_90

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_90
    if-nez v6, :cond_95

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_95
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    return-void

    :cond_98
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_3e

    :cond_ab
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v7, :cond_bb

    iget-object v0, v7, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    goto :goto_75
.end method

.method onWindowReplacementTimeout()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-nez v0, :cond_25

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_13

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    goto :goto_13

    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    goto :goto_13
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    return-void
.end method

.method removeDeadWindows()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindowsIfPossible()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-void

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;I)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "window token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already child of task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2b
    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq v3, v4, :cond_61

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "window token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " current task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " belongs to a different stack than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    if-eq v2, v1, :cond_84

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_84
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method restoreSavedSurfaceForInterestingWindows()V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canRestoreSurfaces()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearWasVisibleBeforeClientHidden()V

    return-void

    :cond_b
    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_14
    if-ltz v0, :cond_25

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->restoreSavedSurfaceForInterestingWindow()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_25
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_41

    if-nez v1, :cond_2c

    const/4 v3, 0x1

    :cond_2c
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_41
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearWasVisibleBeforeClientHidden()V

    return-void
.end method

.method setAllAppWinAnimators()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_1e

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowState;->addWinAnimatorToList(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_11
    return-void
.end method

.method setCanTurnScreenOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return-void
.end method

.method setClientHidden(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    if-eq v0, p1, :cond_a

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    return-void
.end method

.method setFillsParent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return-void
.end method

.method setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z
    .registers 23

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    xor-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    move/from16 v0, p2

    if-eq v2, v0, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v2, :cond_2f

    :cond_27
    if-eqz p2, :cond_d9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v2

    if-eqz v2, :cond_d9

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v3, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v2, v3, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    :cond_48
    const/4 v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_7b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZZ)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v12, 0x1

    const/4 v10, 0x1

    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v15

    if-eqz v15, :cond_7a

    if-eqz v8, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_7a

    move/from16 v0, p3

    invoke-virtual {v8, v15, v0}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_7a
    const/4 v9, 0x1

    :cond_7b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v16

    const/4 v11, 0x0

    :goto_84
    move/from16 v0, v16

    if-ge v11, v0, :cond_9c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v12}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v2

    or-int/2addr v9, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_84

    :cond_9c
    xor-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    const/4 v13, 0x1

    if-nez p2, :cond_106

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    :goto_b0
    if-eqz v9, :cond_d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p4, :cond_cf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_e2

    const/4 v10, 0x1

    :cond_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_ec
    if-ltz v11, :cond_13b

    xor-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_13b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isWindowAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_103

    const/4 v10, 0x1

    :cond_103
    add-int/lit8 v11, v11, -0x1

    goto :goto_ec

    :cond_106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_126

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_126

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    :cond_126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto/16 :goto_b0

    :cond_13b
    if-eqz v13, :cond_1ce

    if-eqz p2, :cond_155

    xor-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_155

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Landroid/view/WindowManagerInternal$AppTransitionListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    :cond_155
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v2, :cond_194

    xor-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_194

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_194

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_17a
    if-ltz v11, :cond_191

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "immediately hidden"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_17a

    :cond_191
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppVisibilityChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    :cond_1ce
    return v10
.end method

.method setWillReplaceChildWindows()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    if-eqz p1, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    :cond_1f
    return-void
.end method

.method shouldFreezeBounds()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    return v1

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    return v1
.end method

.method shouldSaveSurface()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    return v0
.end method

.method shouldUseAppThemeSnapshot()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    if-nez v1, :cond_b

    sget-object v1, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$INST$0:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    :cond_b
    return v0
.end method

.method startFreezingScreen()V
    .registers 9

    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v5, v3, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v6, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_59

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_59
    return-void
.end method

.method startRelaunching()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldFreezeBounds()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_11
    if-ltz v0, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_23
    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    return-void
.end method

.method stepAppWindowsAnimation(J)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_22
.end method

.method stopFreezingScreen(ZZ)V
    .registers 13

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-nez v4, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_21

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    if-nez p2, :cond_25

    if-eqz v2, :cond_49

    :cond_25
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v8, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, v4, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v4, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_49
    if-eqz p1, :cond_59

    if-eqz v2, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_54
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_59
    return-void
.end method

.method stopUsingSavedSurfaceLocked()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->stopUsingSavedSurface()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v1, :cond_4b

    const-string/jumbo v1, " mIsExiting="

    :goto_42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4b
    const-string/jumbo v1, ""

    goto :goto_42
.end method

.method transferStartingWindow(Landroid/os/IBinder;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_e

    return v8

    :cond_e
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_89

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    if-eqz v6, :cond_89

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    iput-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    iput-object p0, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object p0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    iput-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v6, :cond_53

    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :cond_53
    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_59

    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    :cond_59
    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v6, :cond_63

    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v9, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    :cond_63
    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0, v6}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/AppWindowAnimator;->transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_89
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v6, :cond_a3

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v6

    if-eqz v6, :cond_a2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    :cond_a2
    return v9

    :cond_a3
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_c2

    iget-object v6, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_b4

    iget-object v6, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->destroy()V

    :cond_b4
    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iput-object v6, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    iput v6, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iput-object v6, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iput-object v7, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    :cond_c2
    return v8
.end method

.method updateAllDrawn()V
    .registers 7

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_41

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-lez v0, :cond_41

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->allDrawnStatesConsidered()Z

    move-result v2

    if-eqz v2, :cond_41

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-lt v2, v0, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_41

    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onAllWindowsDrawn()V

    :cond_41
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v2, :cond_77

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindowsExcludingSaved:I

    if-lez v0, :cond_77

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindowsExcludingSaved:I

    if-ge v2, v0, :cond_53

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v2

    if-eqz v2, :cond_77

    :cond_53
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    return v6

    :cond_16
    iget-wide v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iput v6, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    iput v6, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    iput v6, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindowsExcludingSaved:I

    iput v6, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindowsExcludingSaved:I

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_32
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_5c

    invoke-virtual {p1, v6}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v2, :cond_8c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    const/4 v0, 0x1

    :cond_5c
    :goto_5c
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v2, :cond_8b

    invoke-virtual {p1, v7}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v2, :cond_8b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v2

    if-eqz v2, :cond_8b

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindowsExcludingSaved:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindowsExcludingSaved:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8b

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindowsExcludingSaved:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindowsExcludingSaved:I

    const/4 v0, 0x1

    :cond_8b
    return v0

    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_9f

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowContainerController;->reportStartingWindowDrawn()V

    :cond_9f
    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto :goto_5c
.end method

.method updateReportedVisibilityLocked()V
    .registers 12

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v10, :cond_5

    return-void

    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_23

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v7, v10, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v8, v10, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v6, v10, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v4, v10, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    if-lez v7, :cond_69

    if-lt v6, v7, :cond_69

    const/4 v3, 0x1

    :goto_38
    if-lez v7, :cond_6b

    if-lt v8, v7, :cond_6b

    iget-boolean v10, p0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    xor-int/lit8 v5, v10, 0x1

    :goto_40
    if-nez v4, :cond_4a

    if-nez v3, :cond_46

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    :cond_46
    if-nez v5, :cond_4a

    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    iget-boolean v10, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v3, v10, :cond_5b

    if-eqz v3, :cond_59

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsDrawn()V

    :cond_59
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    :cond_5b
    iget-boolean v10, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v5, v10, :cond_68

    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eqz v0, :cond_68

    if-eqz v5, :cond_6d

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsVisible()V

    :cond_68
    :goto_68
    return-void

    :cond_69
    const/4 v3, 0x0

    goto :goto_38

    :cond_6b
    const/4 v5, 0x0

    goto :goto_40

    :cond_6d
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsGone()V

    goto :goto_68
.end method

.method windowsAreFocusable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method
