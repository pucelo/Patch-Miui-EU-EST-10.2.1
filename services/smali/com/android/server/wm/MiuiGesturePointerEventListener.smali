.class public Lcom/android/server/wm/MiuiGesturePointerEventListener;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;,
        Lcom/android/server/wm/MiuiGesturePointerEventListener$H;,
        Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DIM_ALPHA:F = 0.5f

.field private static final CHECK_GAP:I = 0x14

.field private static final CHECK_TAIL_DISTANCE:I = 0x1

.field private static final CLIP:Ljava/lang/String; = "clip"

.field private static final DEBUG:Z = true

.field private static final DELAYED_NOTIFY_TO_HOME:I = 0x15e

.field private static final DISTANCE_CANCEL_TO_RECENTS:I = 0x8c

.field private static final DISTANCE_GO_BACK_APP:I = 0xa0

.field private static final DISTANCE_GO_TO_RECENTS:I = 0xa0

.field private static final DISTANCE_LIMIT:I = 0x14

.field public static final INITIAL_SIZE:I = 0xd

.field private static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final MIX_INITIAL_SIZE:I = 0xe

.field private static final NORMAL_ANIMATION_DURATION:I = 0x12c

.field private static final RECENT_ANIMATION_END_DELAY:I = 0x64

.field private static final SCALE:Ljava/lang/String; = "scale"

.field private static final STATUS_FINISH:I = 0x3

.field private static final STATUS_READY:I = 0x1

.field private static final STATUS_RUNNING:I = 0x2

.field private static final STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MiuiGesturePointerEventListener"

.field private static final TRANSLATE_X:Ljava/lang/String; = "translateX"

.field private static final TRANSLATE_Y:Ljava/lang/String; = "translateY"

.field private static final TYPE_CANCAL_ANIMATION:I = 0x1

.field private static final TYPE_GO_HOME_ANIMATION:I


# instance fields
.field private mAnimating:Z

.field private mAnimationFrameCallbackScheduled:Z

.field private mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

.field private mCancelAnimation:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mCloseAnimation:Landroid/view/animation/Animation;

.field private final mCloseTransformation:Landroid/view/animation/Transformation;

.field private mClosingAppTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mClosingAppWindows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertX:I

.field private mConvertY:I

.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownX:F

.field private mDownY:F

.field private mDuringGoBackHome:Z

.field private mGestureAnimationCallback:Landroid/view/Choreographer$FrameCallback;

.field private mGestureController:Lcom/android/server/wm/MiuiGestureController;

.field private mGestureStatus:I

.field private mGestureStubWindow:Lcom/android/server/wm/WindowState;

.field private mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHandleByGestureWindows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

.field private final mHasSurfaceViewWindows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mHomeWindow:Lcom/android/server/wm/WindowState;

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mIsEnterRecents:Z

.field private mIsFirstMove:Z

.field private mIsThumbnailShow:Z

.field private mLastAnimating:Z

.field private mLastTouchTime:J

.field private final mLock:Ljava/lang/Object;

.field private mOpenAnimation:Landroid/view/animation/Animation;

.field private final mOpenTransformation:Landroid/view/animation/Transformation;

.field private mPosX:I

.field private mPosY:I

.field private mRecentsAnimating:Z

.field mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mRecentsWindow:Lcom/android/server/wm/WindowState;

.field private mSbmServices:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mScalingWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private mStatusBarToken:Landroid/os/Binder;

.field private mTailDistance:D

.field private mTailX:I

.field private mTailY:I

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private mTargetX:I

.field private mTargetY:I

.field private mThumbnail:Landroid/view/SurfaceControl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGesturePointerEventListener$H;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOnHome()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOnRecents()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->updateTail()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/MiuiGesturePointerEventListener;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOverSpeed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowState;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetWindowGestureState()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetWindowSurface(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->showStatusBar()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->unregisterInputConsumer()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureController;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBarToken:Landroid/os/Binder;

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const-class v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSbmServices:Lcom/android/server/statusbar/StatusBarManagerService;

    new-instance v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_a4

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayWidth:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayHeight:I

    :cond_a4
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->init()V

    return-void
.end method

.method private animate(J)V
    .registers 32

    :try_start_0
    const-string/jumbo v2, "gesture animate begin"

    const-wide/16 v10, 0x20

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_135
    .catchall {:try_start_0 .. :try_end_f} :catchall_2a0

    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    if-eqz v2, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_29

    const-string/jumbo v2, "home"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->showStatusBar()V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_132

    :try_start_2c
    monitor-exit v27
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_135
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2a0

    const-wide/16 v10, 0x20

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_33
    :try_start_33
    const-string/jumbo v2, "home"

    invoke-static {v2}, Lcom/android/server/wm/FullScreenEventReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    const-wide/32 v10, 0xf4240

    div-long v16, p1, v10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_17d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v20

    const/16 v2, 0x9

    new-array v0, v2, [F

    move-object/from16 v22, v0

    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v24

    if-eqz v24, :cond_9e

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_9e
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/4 v2, 0x0

    aget v5, v22, v2

    const/4 v2, 0x4

    aget v6, v22, v2

    const/4 v2, 0x2

    aget v14, v22, v2

    const/4 v2, 0x5

    aget v15, v22, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    if-eqz v2, :cond_cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimatorHelper;->stepMiuiThumbnailAnimation(Landroid/view/animation/Transformation;Z)V

    :cond_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_dd
    :goto_dd
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    if-eqz v25, :cond_dd

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    if-eqz v2, :cond_dd

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_14e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v21

    if-eqz v21, :cond_dd

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float v7, v14, v2

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float v8, v15, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->computeShownSurfaceLocked(Lcom/android/server/wm/WindowSurfaceController;FFFFF)V
    :try_end_131
    .catchall {:try_start_33 .. :try_end_131} :catchall_132

    goto :goto_dd

    :catchall_132
    move-exception v2

    :try_start_133
    monitor-exit v27

    throw v2
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_135} :catch_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_2a0

    :catch_135
    move-exception v18

    const/4 v2, 0x0

    :try_start_137
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->finishGoHomeAnimation(I)V

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v9, "Go home animating exception"

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_137 .. :try_end_148} :catchall_2a0

    const-wide/16 v10, 0x20

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :goto_14d
    return-void

    :cond_14e
    :try_start_14e
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_dd

    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->computeShownSurfaceLocked(Lcom/android/server/wm/WindowSurfaceController;FFFFF)V

    goto :goto_dd

    :cond_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    if-eqz v2, :cond_176

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsThumbnailShow:Z

    if-nez v2, :cond_176

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsThumbnailShow:Z

    :cond_176
    if-eqz v20, :cond_17d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    :cond_17d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_217

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v20

    const/16 v2, 0x9

    new-array v0, v2, [F

    move-object/from16 v22, v0

    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1de

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget v9, v9, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v2, v9

    int-to-float v2, v2

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget v10, v10, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1de
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/4 v2, 0x0

    aget v5, v22, v2

    const/4 v2, 0x4

    aget v6, v22, v2

    const/4 v2, 0x2

    aget v14, v22, v2

    const/4 v2, 0x5

    aget v15, v22, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_210

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->computeShownSurfaceLocked(Lcom/android/server/wm/WindowSurfaceController;FFFFF)V

    :cond_210
    if-nez v20, :cond_299

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    :cond_217
    :goto_217
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-eqz v2, :cond_237

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_237

    const-string/jumbo v2, "gesture animating"

    const-wide/16 v10, 0x20

    const/4 v9, 0x0

    invoke-static {v10, v11, v2, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v9, "Go home animating begin"

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_237
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-nez v2, :cond_255

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    if-eqz v2, :cond_255

    const-string/jumbo v2, "gesture animating"

    const-wide/16 v10, 0x20

    const/4 v9, 0x0

    invoke-static {v10, v11, v2, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v9, "Go home animating end"

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_255
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-eqz v2, :cond_266

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->scheduleAnimation()V
    :try_end_266
    .catchall {:try_start_14e .. :try_end_266} :catchall_132

    :cond_266
    :try_start_266
    monitor-exit v27

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-nez v2, :cond_292

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_292

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_289

    const-string/jumbo v2, "home"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    :cond_289
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->finishGoHomeAnimation(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->showStatusBar()V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_292} :catch_135
    .catchall {:try_start_266 .. :try_end_292} :catchall_2a0

    :cond_292
    const-wide/16 v10, 0x20

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_14d

    :cond_299
    const/4 v2, 0x1

    :try_start_29a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z
    :try_end_29e
    .catchall {:try_start_29a .. :try_end_29e} :catchall_132

    goto/16 :goto_217

    :catchall_2a0
    move-exception v2

    const-wide/16 v10, 0x20

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private applyResetAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)Landroid/animation/ValueAnimator;
    .registers 30

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_4a

    if-eqz p3, :cond_15e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetX:I

    move/from16 v21, v0

    :goto_1e
    if-eqz p3, :cond_166

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetY:I

    move/from16 v22, v0

    :goto_26
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosX:I

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosY:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowScale:F

    if-eqz p3, :cond_16e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    int-to-float v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v2, v3

    :cond_4a
    :goto_4a
    if-eqz p3, :cond_93

    if-eqz p1, :cond_93

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_93

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_93

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-eqz v11, :cond_93

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v20

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v21, v0

    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v5, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v20

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    :cond_93
    const-string/jumbo v2, "translateX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float v5, v14

    const/4 v6, 0x0

    aput v5, v3, v6

    move/from16 v0, v21

    int-to-float v5, v0

    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v24

    const-string/jumbo v2, "translateY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float v5, v15

    const/4 v6, 0x0

    aput v5, v3, v6

    move/from16 v0, v22

    int-to-float v5, v0

    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v25

    const-string/jumbo v2, "scale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v13, v3, v5

    const/4 v5, 0x1

    aput v20, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    if-eqz p3, :cond_e8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    if-lez v2, :cond_e8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetHeight:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    div-int v18, v2, v3

    :cond_e8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v17

    :goto_f2
    const-string/jumbo v2, "clip"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v17, v3, v5

    const/4 v5, 0x1

    aput v18, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v24, v2, v3

    const/4 v3, 0x1

    aput-object v25, v2, v3

    const/4 v3, 0x2

    aput-object v16, v2, v3

    const/4 v3, 0x3

    aput-object v9, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v3, v3, -0xa0

    if-ge v2, v3, :cond_178

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v10, v2, -0xa0

    :goto_12e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v2, v2, -0xa0

    sub-int v2, v10, v2

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    if-gez v8, :cond_145

    const/4 v8, 0x0

    :cond_145
    if-eqz p3, :cond_149

    const/16 v8, 0x12c

    :cond_149
    int-to-long v2, v8

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/animation/ValueAnimator;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4

    :cond_15e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosX:I

    move/from16 v21, v0

    goto/16 :goto_1e

    :cond_166
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosY:I

    move/from16 v22, v0

    goto/16 :goto_26

    :cond_16e
    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_4a

    :cond_172
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    goto/16 :goto_f2

    :cond_178
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    goto :goto_12e
.end method

.method private calculateInertia()Landroid/graphics/Point;
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->updateTail()V

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private calculateWindowPosition(FF)V
    .registers 9

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertX:I

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    if-le v0, v1, :cond_45

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->linearToCubic(FFFF)F

    move-result v1

    const/high16 v2, 0x44070000    # 540.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    :goto_33
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->linearToCubic(FFFF)F

    move-result v0

    const v1, 0x3ec51eb8    # 0.385f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    return-void

    :cond_45
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->linearToCubic(FFFF)F

    move-result v1

    const/high16 v2, 0x43a50000    # 330.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    goto :goto_33
.end method

.method private cancelGesture()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelGesture: mIsEnterRecents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureCancel()V

    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureAnimationCancel()V

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoBackAppAnimation()V

    iput-boolean v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    return-void
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method private computeShownSurfaceLocked(Lcom/android/server/wm/WindowSurfaceController;FFFFF)V
    .registers 16

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v8

    if-eqz p1, :cond_3a

    :try_start_5
    iget-object v0, p1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v6

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_41

    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MiuiGestureController;->setAlphaByGesture(Lcom/android/server/wm/WindowSurfaceController;F)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1, p5, p6}, Lcom/android/server/wm/MiuiGestureController;->setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MiuiGestureController;->setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V

    if-nez v6, :cond_37

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    if-le v0, v1, :cond_37

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_3c

    :cond_37
    :try_start_37
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    :cond_3a
    monitor-exit v8

    return-void

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private createThumbnailAppAnimator(Lcom/android/server/wm/AppWindowToken;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    if-eqz v2, :cond_db

    if-eqz p1, :cond_db

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    iget-object v0, v2, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_db

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    if-eqz v17, :cond_2b

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v18

    :goto_25
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v18, :cond_2e

    return-void

    :cond_2b
    const/16 v18, 0x0

    goto :goto_25

    :cond_2e
    new-instance v20, Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v21

    if-eqz v21, :cond_dc

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    :goto_59
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v4, "thumbnail anim"

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/wm/AppWindowToken;->windowType:I

    if-eqz v21, :cond_e9

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    :goto_76
    const/4 v7, -0x3

    const/4 v8, 0x4

    invoke-direct/range {v2 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v12}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    new-instance v15, Landroid/view/Surface;

    invoke-direct {v15}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v15, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    invoke-virtual {v15}, Landroid/view/Surface;->release()V

    new-instance v2, Lcom/android/server/wm/AppWindowAnimatorHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    if-eqz v21, :cond_ee

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit16 v6, v3, 0x3e8

    :goto_ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-object v3, v11

    move-object/from16 v4, v20

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/AppWindowAnimatorHelper;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;ILcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, v2, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getAnimationScale(I)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_db
    :goto_db
    return-void

    :cond_dc
    new-instance v11, Landroid/graphics/Rect;

    iget v2, v14, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v14, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_59

    :cond_e9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    :try_end_ec
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3f .. :try_end_ec} :catch_f0

    move-result v10

    goto :goto_76

    :cond_ee
    const/4 v6, 0x0

    goto :goto_ac

    :catch_f0
    move-exception v16

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t allocate mThumbnail/Canvas surface w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_db
.end method

.method private findGestureStubWindowLocked()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStubWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private finishGoHomeAnimation(I)V
    .registers 13

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v3, "finish go home animation"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1e
    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v3, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MiuiGestureController;->stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_90

    if-eqz v0, :cond_46

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_46
    :try_start_46
    invoke-direct {p0, v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetWindowSurface(Lcom/android/server/wm/WindowState;)V

    invoke-direct {p0, v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/wm/WindowState;->mDestroying:Z

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v8, v0, v4}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v7

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroy surface for win = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v7, :cond_8c

    const-string/jumbo v0, " successfully"

    :goto_6d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_87

    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_87

    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V
    :try_end_87
    .catchall {:try_start_46 .. :try_end_87} :catchall_90

    :cond_87
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1e

    :cond_8c
    :try_start_8c
    const-string/jumbo v0, " failed"
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_6d

    :catchall_90
    move-exception v0

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_96
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    :goto_a6
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->computeShownSurfaceLocked(Lcom/android/server/wm/WindowSurfaceController;FFFFF)V

    :cond_ad
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    return-void

    :cond_b6
    const/4 v1, 0x0

    goto :goto_a6
.end method

.method private gestureReady()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "MiuiGesturePointerEventListener"

    const-string/jumbo v7, "gestureReady!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->hideStatusBar()V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1e
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iput-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->stopAppWindowAnimatingLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->registerInputConsumer()V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    new-instance v6, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v7, 0x11

    invoke-direct {v6, v7, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->updateVisibleWindowsForGestureLocked(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-direct {p0, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->screenshotActivity(Lcom/android/server/wm/AppWindowToken;)V

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    iget v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    if-le v6, v7, :cond_7f

    invoke-virtual {p0, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, v6, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-eqz v1, :cond_7f

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_6b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, v2, Lcom/miui/internal/transition/MiuiLaunchIconInfo;->launchIconName:Ljava/lang/String;

    iget v7, v2, Lcom/miui/internal/transition/MiuiLaunchIconInfo;->userId:I

    invoke-interface {v1, v6, v7}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    const-string/jumbo v6, "getSpec from launcher"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->checkTime(JLjava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7f} :catch_85

    :cond_7f
    :goto_7f
    iput-boolean v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z

    :cond_81
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->hideInputMethodWindowIfNeeded()V

    return-void

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f
.end method

.method private getGestureHotSpace(I)I
    .registers 7

    const/16 v0, 0xd

    const-string/jumbo v2, "lithium"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v0, 0xe

    :cond_f
    int-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    return v1
.end method

.method private getStatusBarWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getTopClosingAppWindow()Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_f

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    if-eqz v0, :cond_32

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v3, v4, :cond_f

    move-object v0, v1

    goto :goto_f

    :cond_32
    move-object v0, v1

    goto :goto_f

    :cond_34
    return-object v0
.end method

.method private getTopClosingAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    :cond_d
    return-object v1
.end method

.method private hideInputMethodWindowIfNeeded()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_28

    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    :cond_31
    return-void
.end method

.method private hideStatusBar()V
    .registers 5

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "hide statusbar"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSbmServices:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSbmServices:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBarToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x900000

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private init()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v0, v0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    new-instance v1, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimationCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method private isAppLaunchingAndSurfaceShownLocked()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$INST$1:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private isCurrentUser(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private isForbidGestureLocked()Z
    .registers 5

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isGestureStubWindowInvisible()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "ForbidGesture: now GestureStubWindow isn\'t visible"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "ForbidGesture: now KeyguardLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_25
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAnimating:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    if-eqz v0, :cond_57

    :cond_2d
    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ForbidGesture: mRecentsAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  mDuringGoBackHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_57
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isAppLaunchingAndSurfaceShownLocked()Z

    move-result v0

    if-nez v0, :cond_67

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "ForbidGesture: now lauching app surface has not show"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_67
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isHomeWindowEnterAnimatingLocked()Z

    move-result v0

    if-eqz v0, :cond_77

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "ForbidGesture: now home window doing enter animating"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_77
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isStartingWindowShownLocked()Z

    move-result v0

    return v0
.end method

.method private isFullScreenModeLocked()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getStatusBarWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private isGestureStubWindowInvisible()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStubWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStubWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->findGestureStubWindowLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isGestureStubWindowInvisible()Z

    move-result v1

    return v1

    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStubWindow:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v1, :cond_26

    const-string/jumbo v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v2, "Forbid gesture because the gesture stub isn\'t visible."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_26
    return v2
.end method

.method private isHomeWindowEnterAnimatingLocked()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;-><init>(BLjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private isMistakeTouchLocked(I)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isMistakeTouch()Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    return v4

    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isFullScreenModeLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    return v4
.end method

.method private isOnHome()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private isOnRecents()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private isOverSpeed(I)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailDistance:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isRightDirection()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isStartingWindowShownLocked()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;->$INST$2:Lcom/android/server/wm/-$Lambda$dPdgengpIePdlJYUuodh3IdlRAk;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_44329(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "ForbidGesture: now starting window showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_44942(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x7

    if-eq v0, v1, :cond_33

    const/4 v1, 0x5

    if-eq v0, v1, :cond_33

    if-eqz v0, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v4, :cond_32

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    :cond_32
    return v4

    :cond_33
    return v3
.end method

.method private launchHome()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, v2, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v2}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/MiuiGesturePointerEventListener$5;

    invoke-direct {v3, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$5;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_44

    :goto_20
    return-void

    :cond_21
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_35
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/MiuiGesturePointerEventListener$6;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener$6;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_42

    goto :goto_20

    :catch_42
    move-exception v0

    goto :goto_20

    :catch_44
    move-exception v0

    goto :goto_20
.end method

.method private linearToCubic(FFFF)F
    .registers 11

    cmpl-float v2, p4, p2

    if-nez v2, :cond_5

    return p1

    :cond_5
    sub-float v2, p1, p2

    sub-float v3, p4, p2

    div-float v1, v2, v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    float-to-double v2, v2

    float-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    double-to-float v0, v2

    :cond_1f
    return v0
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .registers 12

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v6, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayHeight:I

    iget v6, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayHeight:I

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayWidth:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayHeight:I

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDisplayWidth:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne v5, v9, :cond_be

    iput v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    iput v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    :cond_5b
    :goto_5b
    iget v6, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-direct {p0, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getGestureHotSpace(I)I

    move-result v2

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    sub-int/2addr v8, v2

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_92

    const-string/jumbo v6, "MiuiGesturePointerEventListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActionDown: mDownY ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  hotSpace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    sub-int/2addr v8, v2

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_100

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_100

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isForbidGestureLocked()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_100

    invoke-direct {p0, v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isMistakeTouchLocked(I)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastTouchTime:J
    :try_end_b9
    .catchall {:try_start_26 .. :try_end_b9} :catchall_c6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_be
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5b

    :try_start_c1
    iput v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    iput v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_c6

    goto :goto_5b

    :catchall_c6
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_cc
    :try_start_cc
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->sendEmptyMessage(I)Z

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    iput-wide v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailDistance:D
    :try_end_df
    .catchall {:try_start_cc .. :try_end_df} :catchall_c6

    :goto_df
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v6, "MiuiGesturePointerEventListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onActionDown end: mGestureStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_100
    const/4 v6, 0x0

    :try_start_101
    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I
    :try_end_103
    .catchall {:try_start_101 .. :try_end_103} :catchall_c6

    goto :goto_df
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .registers 23

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    sub-float v12, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    float-to-int v1, v8

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c2

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_1c2

    :cond_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_46

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->gestureReady()V

    :cond_46
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v3, v3, -0x8c

    if-le v1, v3, :cond_90

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v1, :cond_90

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_7d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7d

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_7d

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const-string/jumbo v3, "hide recent window"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowSurfaceController;->hideInTransaction(Ljava/lang/String;)V

    :cond_7d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureCancel()V

    :cond_90
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->calculateWindowPosition(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    if-eqz v1, :cond_1d6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b7
    :goto_b7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    if-eqz v16, :cond_b7

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_b7

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v15, v1

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_119

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_119

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    :cond_119
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    monitor-enter v3
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_133} :catch_1b2

    :try_start_133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_1c3

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    :try_start_13f
    monitor-exit v3

    if-eqz v9, :cond_1c6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v3, v13}, Lcom/android/server/wm/MiuiGestureController;->notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V

    :goto_151
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z

    if-eqz v1, :cond_16d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_15e} :catch_1b2

    :try_start_15e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V
    :try_end_169
    .catchall {:try_start_15e .. :try_end_169} :catchall_1cb

    :try_start_169
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_16d
    if-eqz v17, :cond_186

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosX:I

    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosY:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowScale:F

    :cond_186
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_189} :catch_1b2

    :try_start_189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    int-to-float v3, v14

    int-to-float v4, v15

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/MiuiGestureController;->setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/MiuiGestureController;->setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V
    :try_end_1ad
    .catchall {:try_start_189 .. :try_end_1ad} :catchall_1d1

    :try_start_1ad
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b0} :catch_1b2

    goto/16 :goto_b7

    :catch_1b2
    move-exception v10

    const-string/jumbo v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v3, "onActionMove: exception"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c2
    :goto_1c2
    return-void

    :catchall_1c3
    move-exception v1

    :try_start_1c4
    monitor-exit v3

    throw v1

    :cond_1c6
    const/4 v1, 0x0

    invoke-virtual {v2, v13, v1}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_151

    :catchall_1cb
    move-exception v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_1d1
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :cond_1d6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1db} :catch_1b2

    goto :goto_1c2
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .registers 11

    const/4 v8, 0x2

    :try_start_1
    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActionUp: mGestureStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mTailDistance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailDistance:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mIsEnterRecents = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    if-ne v4, v8, :cond_97

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOverSpeed(I)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isRightDirection()Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOnHome()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOnRecents()Z

    move-result v3

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActionUp: onHome = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  onRecents = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v4}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v4}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureCancel()V

    :cond_92
    if-nez v2, :cond_c1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoHomeAnimation()V

    :cond_97
    :goto_97
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->removeMessages(I)V

    iget-boolean v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAnimating:Z

    if-eqz v4, :cond_122

    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    if-ne v4, v8, :cond_122

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    new-instance v5, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getAnimationScale(I)F

    move-result v6

    const/high16 v7, 0x43960000    # 300.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_bd
    :goto_bd
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    :goto_c0
    return-void

    :cond_c1
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c4} :catch_c5

    goto :goto_97

    :catch_c5
    move-exception v1

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "onActionUp: exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c0

    :cond_d6
    :try_start_d6
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGesture()V

    goto :goto_97

    :cond_da
    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v4, v4, -0xa0

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_11d

    iget-boolean v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v4, :cond_eb

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoRecentsAnimation()V

    goto :goto_97

    :cond_eb
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isOnHome()Z

    move-result v2

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActionUp: onHome = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_118

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "onActionUp: go to home when recents not show behind"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoHomeAnimation()V

    goto :goto_97

    :cond_118
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    goto/16 :goto_97

    :cond_11d
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGesture()V

    goto/16 :goto_97

    :cond_122
    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    if-ne v4, v8, :cond_bd

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "unregister inputConsumer"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->unregisterInputConsumer()V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_132} :catch_c5

    goto :goto_bd
.end method

.method private registerInputConsumer()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    if-nez v1, :cond_24

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "recents_animation_input_consumer"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->destroyInputConsumer(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "recents_animation_input_consumer"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V

    new-instance v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$7;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener$7;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_24
    return-void
.end method

.method private reset()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v4, "reset"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MiuiGestureController;->stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2e

    goto :goto_1a

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_31
    const/4 v2, 0x0

    :try_start_32
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    invoke-virtual {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->clearThumbnail()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;

    invoke-direct {v4, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_6f
    .catchall {:try_start_32 .. :try_end_6f} :catchall_2e

    monitor-exit v3

    return-void
.end method

.method private resetClipWindow(Lcom/android/server/wm/WindowState;)V
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetClipWindow: w: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    if-eqz v2, :cond_5b

    iget-object v4, v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    :goto_30
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5e

    const/4 v3, 0x1

    :goto_3a
    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    monitor-enter v5

    :try_start_3e
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_60

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    monitor-exit v5

    if-nez v1, :cond_63

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_63

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_63

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v0, v7}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    :goto_5a
    return-void

    :cond_5b
    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    goto :goto_30

    :cond_5e
    const/4 v3, 0x0

    goto :goto_3a

    :catchall_60
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_63
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/wm/MiuiGestureController;->notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V

    goto :goto_5a
.end method

.method private resetWindowGestureState()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MiuiGestureController;->stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    goto :goto_e

    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private resetWindowSurface(Lcom/android/server/wm/WindowState;)V
    .registers 9

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v2, "reset window surface"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_19
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const-string/jumbo v0, "gesture reset"

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowSurfaceController;->hideInTransaction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget v2, v6, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MiuiGestureController;->setAlphaByGesture(Lcom/android/server/wm/WindowSurfaceController;F)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MiuiGestureController;->setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget v2, v6, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v6, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v6, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v5, v6, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/MiuiGestureController;->setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_4a

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void

    :catchall_4a
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private screenshotActivity(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method private showStatusBar()V
    .registers 5

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "show statusbar"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSbmServices:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSbmServices:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBarToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private startGoBackAppAnimation()V
    .registers 11

    const/4 v9, 0x0

    const-string/jumbo v7, "MiuiGesturePointerEventListener"

    const-string/jumbo v8, "startGoBackAppAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    invoke-direct {p0, v3, v4, v9}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->applyResetAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_49
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_7d

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5c
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;

    invoke-direct {v8, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v7, "cancel"

    invoke-static {v7}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    :cond_7d
    return-void
.end method

.method private startGoHomeAnimation()V
    .registers 22

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v6, "startGoHomeAnimation"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v0, v11, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v17, v0

    iget v12, v11, Landroid/view/DisplayInfo;->appHeight:I

    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-direct {v3, v2, v6, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    if-eqz v14, :cond_7b

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_131

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v13, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    :goto_3c
    if-eqz v13, :cond_7b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    invoke-virtual {v13}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v7, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    move/from16 v18, v0

    invoke-virtual {v13}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v5, v2, v6, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7b
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    if-le v2, v6, :cond_b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    if-eqz v2, :cond_b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    iget-object v2, v2, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    iget-object v2, v2, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->getTopClosingAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->createThumbnailAppAnimator(Lcom/android/server/wm/AppWindowToken;)V

    :cond_b0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->calculateInertia()Landroid/graphics/Point;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_ee

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_df

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    move/from16 v0, v17

    invoke-virtual {v2, v9, v8, v0, v12}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_134

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_100
    :goto_100
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_100

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_100

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    if-eqz v2, :cond_100

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v13, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v13, :cond_100

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v6, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_100

    :cond_131
    const/4 v13, 0x0

    goto/16 :goto_3c

    :cond_134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_15b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_15b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchHome()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    const/4 v2, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1a1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_192

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    move/from16 v0, v17

    invoke-virtual {v2, v9, v8, v0, v12}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_1a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    new-instance v6, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-direct {v6, v7, v0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    const-wide/16 v18, 0x15e

    move-wide/from16 v0, v18

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v2, "home"

    invoke-static {v2}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->scheduleAnimation()V

    return-void
.end method

.method private startGoRecentsAnimation()V
    .registers 12

    const/4 v10, 0x1

    const-string/jumbo v8, "MiuiGesturePointerEventListener"

    const-string/jumbo v9, "startGoRecentsAnimation"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    if-eqz v8, :cond_4e

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4e

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2c
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    invoke-direct {p0, v4, v5, v10}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->applyResetAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_4e
    new-instance v8, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;

    invoke-direct {v8, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v8, "recents"

    invoke-static {v8}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_73

    const-string/jumbo v8, "MiuiGesturePointerEventListener"

    const-string/jumbo v9, "mRecents is Animating"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAnimating:Z

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_73
    return-void
.end method

.method private stopAppWindowAnimatingLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private unregisterInputConsumer()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "recents_animation_input_consumer"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->destroyInputConsumer(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_14
    return-void
.end method

.method private updateTail()V
    .registers 7

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailDistance:D

    return-void
.end method

.method private updateVisibleWindowsForGestureLocked(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, p1}, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method


# virtual methods
.method cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 7

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancel go home animation token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_32

    monitor-exit v1

    invoke-direct {p0, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->finishGoHomeAnimation(I)V

    :cond_31
    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearThumbnail()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsThumbnailShow:Z

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mThumbnail:Landroid/view/SurfaceControl;

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v0, v0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->removeMessages(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_25

    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;

    move-result-object v0

    return-object v0
.end method

.method isGestureRunning()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_29014(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 7

    iget-boolean v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_94

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    if-eqz v2, :cond_94

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to mClosingAppTokens"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4a
    new-instance v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iget-object v2, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosX:I

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosY:I

    const-string/jumbo v2, "MiuiGesturePointerEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add win = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to mScalingWindows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_94
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_40690(Ljava/util/function/Consumer;Lcom/android/server/wm/WindowState;)V
    .registers 12

    const/4 v8, 0x5

    const/4 v7, 0x1

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v5

    if-eqz v5, :cond_10

    return-void

    :cond_10
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v4}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v6, 0x7d0

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    if-gt v5, v2, :cond_25

    return-void

    :cond_25
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v3

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_46

    if-nez v3, :cond_46

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/MiuiGestureController;->isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-direct {p0, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_46

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    return-void

    :cond_46
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_5f

    if-ne v3, v8, :cond_5f

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_5f

    invoke-direct {p0, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_5f

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    return-void

    :cond_5f
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_64

    return-void

    :cond_64
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-nez v1, :cond_76

    if-eq v3, v8, :cond_6d

    const/4 v5, 0x7

    if-ne v3, v5, :cond_6e

    :cond_6d
    return-void

    :cond_6e
    if-eqz v3, :cond_6d

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6d

    const/4 v5, 0x4

    if-eq v3, v5, :cond_6d

    :cond_76
    if-nez v1, :cond_93

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    if-eqz v5, :cond_96

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v7, :cond_91

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_96

    :cond_91
    if-eqz p1, :cond_96

    :cond_93
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_96
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_43413(Lcom/android/server/wm/WindowState;)V
    .registers 5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    if-eq v0, v2, :cond_44

    const/4 v1, 0x5

    if-eq v0, v1, :cond_44

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_44

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_45667(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2f

    if-nez v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    return v1

    :cond_2f
    return v3
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_52461()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_71000(Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->tryToSetGestureStubWindow(Lcom/android/server/wm/WindowState;)V

    :cond_b
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_72958(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_c

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_7996()V
    .registers 2

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MiuiGesturePointerEventListener_8104(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationFrameCallbackScheduled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    monitor-exit v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->animate(J)V

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method notifyHasSurfaceView(Lcom/android/server/wm/WindowState;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    monitor-enter v1

    if-eqz p2, :cond_f

    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1d

    :cond_d
    :goto_d
    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHasSurfaceViewWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    :goto_7
    return-void

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_7

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 3

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method

.method scheduleAnimation()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimationCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method setGestureStubWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStubWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecentsAppWindowToken token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    return-void
.end method

.method setRecentsItemCoordinates(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetX:I

    iput p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetY:I

    iput p3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    iput p4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetHeight:I

    return-void
.end method

.method setRecentsWindowState(Lcom/android/server/wm/WindowState;)V
    .registers 5

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecentsWindowState w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method
