.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/BoundsAnimationController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/BoundsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-void
.end method

.method private resume()V
    .registers 4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private updateBooster()V
    .registers 3

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_wm_BoundsAnimationController-mthref-0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .registers 21

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    if-eqz v11, :cond_17

    const/4 v12, 0x1

    :goto_b
    const/4 v8, 0x0

    if-eqz v12, :cond_2c

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v11

    :cond_17
    const/4 v12, 0x0

    goto :goto_b

    :cond_19
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->-get0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v8

    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->-get0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_61

    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_5e

    :cond_29
    :goto_29
    invoke-virtual {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    :cond_2c
    new-instance v2, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_74

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_70

    :goto_4f
    mul-int/lit8 v3, p4, 0x1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    return-object v2

    :cond_5e
    const/16 p5, 0x2

    goto :goto_29

    :cond_61
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->-get0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    const/4 v3, 0x1

    move/from16 v0, p5

    if-eq v0, v3, :cond_29

    const/16 p5, 0x2

    goto :goto_29

    :cond_70
    const/16 p4, 0x1a9

    goto :goto_4f

    nop

    :array_74
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onAllWindowsDrawn()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
