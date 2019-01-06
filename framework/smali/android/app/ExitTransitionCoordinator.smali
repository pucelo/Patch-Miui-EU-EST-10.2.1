.class Landroid/app/ExitTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ExitTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mExitNotified:Z

.field private mExitSharedElementBundle:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

.field private mIsBackgroundReady:Z

.field private mIsCanceled:Z

.field private mIsExitStarted:Z

.field private mIsHidden:Z

.field private mSharedElementBundle:Landroid/os/Bundle;

.field private mSharedElementNotified:Z

.field private mSharedElementsHidden:Z


# direct methods
.method static synthetic -get0(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ExitTransitionCoordinator;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return v0
.end method

.method static synthetic -get2(Landroid/app/ExitTransitionCoordinator;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    return v0
.end method

.method static synthetic -get3(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/ExitTransitionCoordinator;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    return p1
.end method

.method static synthetic -set2(Landroid/app/ExitTransitionCoordinator;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->beginTransitions()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ExitTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->startExitTransition()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/SharedElementCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p4, p3, p7}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    invoke-virtual {p0, p5, p6}, Landroid/app/ExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->stripOffscreenViews()V

    xor-int/lit8 v0, p7, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private beginTransitions()V
    .registers 7

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/app/ExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v2, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    if-eqz v3, :cond_21

    invoke-virtual {p0, v4, v4}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    :cond_21
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    if-eqz v3, :cond_2f

    invoke-virtual {p0, v5, v4}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    :cond_2f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_32
    return-void

    :cond_33
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    goto :goto_32
.end method

.method private captureExitSharedElementsState()Landroid/os/Bundle;
    .registers 9

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    :goto_10
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3b

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2e

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_2e
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    goto :goto_2b

    :cond_3b
    return-object v3
.end method

.method private delayCancel()V
    .registers 5

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    return-void
.end method

.method private fadeOutBackground()V
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_42

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/ExitTransitionCoordinator$7;

    invoke-direct {v3, p0}, Landroid/app/ExitTransitionCoordinator$7;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getFadeDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_42
    :goto_42
    return-void

    :cond_43
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    goto :goto_42
.end method

.method private finish()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    :cond_1c
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    return-void
.end method

.method private finishIfNecessary()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    if-eqz v0, :cond_1c

    :cond_19
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    :cond_1c
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_26

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    :cond_26
    return-void
.end method

.method private getExitTransition()Landroid/transition/Transition;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/app/ExitTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x0

    :cond_26
    if-nez v1, :cond_2c

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    :goto_2b
    return-object v1

    :cond_2c
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ExitTransitionCoordinator$8;

    invoke-direct {v2, p0, p0, v0}, Landroid/app/ExitTransitionCoordinator$8;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_2b
.end method

.method private getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    :goto_17
    return-object v0

    :cond_18
    new-instance v1, Landroid/app/ExitTransitionCoordinator$9;

    invoke-direct {v1, p0, p0}, Landroid/app/ExitTransitionCoordinator$9;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_17
.end method

.method private hideSharedElements()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;->hideSharedElements()V

    :cond_c
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    return-void
.end method

.method private notifyExitComplete()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iput-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_25

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_25
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    :cond_28
    return-void
.end method

.method private sharedElementExitBack()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_a
    if-eqz v0, :cond_33

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v1, Landroid/app/ExitTransitionCoordinator$1;

    invoke-direct {v1, p0, v0}, Landroid/app/ExitTransitionCoordinator$1;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    :goto_32
    return-void

    :cond_33
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_32
.end method

.method private startExitTransition()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_1f

    invoke-virtual {p0, v3, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    goto :goto_1e
.end method

.method private startSharedElementExit(Landroid/view/ViewGroup;)V
    .registers 8

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v1

    new-instance v2, Landroid/app/ExitTransitionCoordinator$2;

    invoke-direct {v2, p0}, Landroid/app/ExitTransitionCoordinator$2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, v0}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_32
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private stopCancel()V
    .registers 3

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected clearState()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    :cond_10
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    return-void
.end method

.method protected getSharedElementTransition()Landroid/transition/Transition;
    .registers 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsTransition()Landroid/transition/Transition;
    .registers 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected isReadyToNotify()Z
    .registers 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method synthetic lambda$-android_app_ExitTransitionCoordinator_6391(Ljava/util/ArrayList;)V
    .registers 3

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/app/ExitTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method

.method protected moveSharedElementWithParent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected notifyComplete()V
    .registers 7

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isReadyToNotify()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    if-nez v2, :cond_34

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v2, :cond_21

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    const/16 v4, 0x67

    invoke-virtual {v2, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    new-instance v5, Landroid/app/ExitTransitionCoordinator$10;

    invoke-direct {v5, p0, v0, v1}, Landroid/app/ExitTransitionCoordinator$10;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    goto :goto_20

    :cond_34
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    goto :goto_20
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    const/16 v1, 0x6a

    packed-switch p1, :pswitch_data_46

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    const-string/jumbo v0, "android:remoteReceiver"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_6

    :cond_21
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    goto :goto_6

    :pswitch_25
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->hideSharedElements()V

    goto :goto_6

    :pswitch_30
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    goto :goto_6

    :pswitch_39
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V

    goto :goto_6

    :pswitch_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    goto :goto_6

    :pswitch_data_46
    .packed-switch 0x64
        :pswitch_7
        :pswitch_25
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_30
        :pswitch_3f
        :pswitch_39
    .end packed-switch
.end method

.method protected onTransitionsComplete()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    return-void
.end method

.method public resetViews()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_b
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, v3, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    :cond_17
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_27

    if-eqz v0, :cond_27

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_27
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    return-void
.end method

.method setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .registers 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->sharedElementTransitionComplete()V

    return-void

    :cond_e
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->captureExitSharedElementsState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_8
.end method

.method public startExit()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v1, :cond_21

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_16
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    new-instance v1, Landroid/app/ExitTransitionCoordinator$3;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$3;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    :cond_21
    return-void
.end method

.method public startExit(ILandroid/content/Intent;)V
    .registers 10

    const/4 v5, 0x1

    iget-boolean v4, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v4, :cond_62

    iput-boolean v5, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_13
    new-instance v4, Landroid/app/ExitTransitionCoordinator$4;

    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$4;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    iput-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_35

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_35
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_63

    :cond_45
    const/4 v3, 0x1

    :goto_46
    if-eqz v3, :cond_65

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    :goto_4a
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-static {v4, p0, v2, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    new-instance v5, Landroid/app/ExitTransitionCoordinator$5;

    invoke-direct {v5, p0}, Landroid/app/ExitTransitionCoordinator$5;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    new-instance v4, Landroid/app/ExitTransitionCoordinator$6;

    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$6;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    :cond_62
    return-void

    :cond_63
    const/4 v3, 0x0

    goto :goto_46

    :cond_65
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    goto :goto_4a
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    :cond_11
    return-void
.end method
