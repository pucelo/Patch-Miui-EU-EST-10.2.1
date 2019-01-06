.class Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$1;,
        Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;,
        Lcom/android/server/wm/WindowState$DeathRecipient;,
        Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;,
        Lcom/android/server/wm/WindowState$WindowId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;",
        "Landroid/view/WindowManagerPolicy$WindowState;"
    }
.end annotation


# static fields
.field private static final DEBUG_DISABLE_SAVING_SURFACES:Z

.field static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0x0

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sEmptyRegion:Landroid/graphics/Region;

.field private static final sWindowSubLayerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimateReplacingWindow:Z

.field mAnimatingExit:Z

.field private mAnimatingWithSavedSurface:Z

.field mAppDied:Z

.field mAppFreezing:Z

.field final mAppOp:I

.field private mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mClient:Landroid/view/IWindow;

.field private mClientChannel:Landroid/view/InputChannel;

.field final mCompatFrame:Landroid/graphics/Rect;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field private final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field private mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field private mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDestroying:Z

.field final mDisplayFrame:Landroid/graphics/Rect;

.field private mDragResizing:Z

.field private mDragResizingChangeReported:Z

.field private mDrawLock:Landroid/os/PowerManager$WakeLock;

.field private mDrawnStateEvaluated:Z

.field mEnforceSizeCompat:Z

.field private mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mForceHideNonSystemOverlayWindow:Z

.field final mFrame:Landroid/graphics/Rect;

.field private mFrameSizeChanged:Z

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mHidden:Z

.field mInRelayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private final mInsetFrame:Landroid/graphics/Rect;

.field mInvGlobalScale:F

.field private mIsChildWindow:Z

.field private final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field private final mLastOutsets:Landroid/graphics/Rect;

.field private final mLastOverscanInsets:Landroid/graphics/Rect;

.field final mLastRelayoutContentInsets:Landroid/graphics/Rect;

.field private final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastSurfaceInsets:Landroid/graphics/Rect;

.field private mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field private final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLastVisibleLayoutRotation:I

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mMovedByResize:Z

.field mObscured:Z

.field private mOrientationChangeTimedOut:Z

.field private mOrientationChanging:Z

.field private final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field private mOutsetsChanged:Z

.field private final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field private mOverscanInsetsChanged:Z

.field final mOwnerCanAddInternalSystemWindow:Z

.field final mOwnerUid:I

.field private final mParentFrame:Landroid/graphics/Rect;

.field mPermanentlyHidden:Z

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field private mReplacementWindow:Lcom/android/server/wm/WindowState;

.field private mReplacingRemoveRequested:Z

.field mReportOrientationChanged:Z

.field mRequestTraversalOnceContext:Ljava/lang/Object;

.field mRequestedHeight:I

.field mRequestedWidth:I

.field private mResizeMode:I

.field mResizedWhileGone:Z

.field private mResizedWhileNotDragResizing:Z

.field private mResizedWhileNotDragResizingReported:Z

.field mSeamlesslyRotated:Z

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownPosition:Landroid/graphics/Point;

.field mSkipEnterAnimationForSeamlessReplacement:Z

.field private final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsChanged:Z

.field private mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field private mSurfaceSaved:Z

.field mSystemUiVisibility:I

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field private mVisibleInsetsChanged:Z

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field private mWasExiting:Z

.field private mWasVisibleBeforeClientHidden:Z

.field mWillReplaceWindow:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field mWindowRemovalAllowed:Z

.field mXOffset:I

.field mYOffset:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/WindowState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowState;->DEBUG_DISABLE_SAVING_SURFACES:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sEmptyRegion:Landroid/graphics/Region;

    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V
    .registers 18

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    new-instance v3, Landroid/util/MergedConfiguration;

    invoke-direct {v3}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object p3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iput p6, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    new-instance v3, Lcom/android/server/wm/WindowState$WindowId;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$WindowId;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, p8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput p9, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V

    iput p7, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_25d

    const/4 v3, 0x1

    :goto_196
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    :try_start_198
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a0
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_1a0} :catch_260

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_28c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_28c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p5}, Landroid/view/WindowManagerPolicy;->getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    add-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v4, p8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    sget-object v3, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {p5, p0, v3}, Lcom/android/server/wm/WindowState;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_280

    const/4 v3, 0x1

    :goto_1d9
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    iget-object v3, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_283

    iget-object v3, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_286

    const/4 v3, 0x1

    :goto_1ec
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    iget-object v3, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_289

    const/4 v3, 0x1

    :goto_1f7
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    :goto_1f9
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v3, :cond_2c7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    :goto_1ff
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_214

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v3, :cond_214

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_214
    new-instance v3, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, p8, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    new-instance v4, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2ca

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    :goto_240
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-direct {v4, v3, p0, p3, v5}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_25c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->setRecentsWindowState(Lcom/android/server/wm/WindowState;)V

    :cond_25c
    return-void

    :cond_25d
    const/4 v3, 0x0

    goto/16 :goto_196

    :catch_260
    move-exception v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    return-void

    :cond_280
    const/4 v3, 0x0

    goto/16 :goto_1d9

    :cond_283
    const/4 v3, 0x1

    goto/16 :goto_1ec

    :cond_286
    const/4 v3, 0x0

    goto/16 :goto_1ec

    :cond_289
    const/4 v3, 0x0

    goto/16 :goto_1f7

    :cond_28c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p0}, Landroid/view/WindowManagerPolicy;->getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    add-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_2c1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_2c3

    const/4 v3, 0x1

    :goto_2b2
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_2c5

    const/4 v3, 0x1

    :goto_2bd
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto/16 :goto_1f9

    :cond_2c1
    const/4 v3, 0x1

    goto :goto_2b2

    :cond_2c3
    const/4 v3, 0x0

    goto :goto_2b2

    :cond_2c5
    const/4 v3, 0x0

    goto :goto_2bd

    :cond_2c7
    const/4 v3, 0x1

    goto/16 :goto_1ff

    :cond_2ca
    const/4 v3, 0x0

    goto/16 :goto_240
.end method

.method private applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v1

    :cond_1b
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    return v1

    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method private calculateSystemDecorRect(Landroid/graphics/Rect;)V
    .registers 15

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v9, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int v4, v9, v10

    iget v9, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v6, v9, v10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v9

    if-eqz v9, :cond_8e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p1, v8, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v9

    if-eqz v9, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v8

    :cond_48
    xor-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5b

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v4

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    iget v10, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v4

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v6

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersect(IIII)Z

    :cond_5b
    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v8, :cond_8d

    iget v8, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_8d

    iget v5, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    :cond_8d
    return-void

    :cond_8e
    invoke-virtual {p1, v8, v8, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3e
.end method

.method private computeDragResizing()Z
    .registers 5

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isStackAffectedByDragResizing(I)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_21

    :cond_20
    return v1

    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    return v1

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_53

    :cond_45
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_53
    return v1
.end method

.method private cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    if-nez v0, :cond_2f

    move/from16 v10, p9

    :goto_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p0}, Landroid/view/WindowManagerPolicy;->isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v11

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v12, p10

    invoke-interface/range {v0 .. v12}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return-void

    :cond_2f
    const/4 v10, 0x1

    goto :goto_c
.end method

.method private forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :goto_11
    if-ge v2, v1, :cond_22

    iget v3, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v3, :cond_22

    invoke-direct {v0, p1, v4}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    return v5

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_29

    :cond_22
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3a

    return v5

    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_11

    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :cond_3a
    if-ge v2, v1, :cond_47

    invoke-direct {v0, p1, v4}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_43

    return v5

    :cond_43
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_32

    :cond_47
    return v4
.end method

.method private forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :goto_12
    if-ltz v1, :cond_23

    iget v2, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v2, :cond_23

    invoke-direct {v0, p1, v4}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v4

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2a

    :cond_23
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    return v4

    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_12

    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :cond_3b
    if-ltz v1, :cond_48

    invoke-direct {v0, p1, v4}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_44

    return v4

    :cond_44
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_33

    :cond_48
    return v3
.end method

.method private getContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_18
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d
.end method

.method private getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    return-object v1
.end method

.method private getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private hasMoved()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_37

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_37

    :cond_26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x1

    goto :goto_34

    :cond_37
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private inFullscreenContainer()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->hasBounds()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isDragResizingChangeReported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return v0
.end method

.method private isHiddenFromUserLocked()Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_40

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_40

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v2, :cond_40

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_40

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_40

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_40

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_40

    return v1

    :cond_40
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v2, :cond_52

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_52
    return v1
.end method

.method private isOpaqueDrawn()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_30

    :cond_25
    :goto_25
    return v0

    :cond_26
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v2, :cond_d

    :cond_2e
    move v0, v1

    goto :goto_25

    :cond_30
    move v0, v1

    goto :goto_25
.end method

.method private isResizedWhileNotDragResizingReported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    return v0
.end method

.method private logPerformShow(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private removeIfPossible(Z)V
    .registers 15

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_31

    const/4 v3, 0x1

    :goto_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v8, :cond_c8

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v8

    if-eqz v8, :cond_c8

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v8, :cond_33

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_31
    const/4 v3, 0x0

    goto :goto_d

    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v8

    if-eqz v8, :cond_48

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_48

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v7

    if-eqz p1, :cond_68

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_68
    if-eqz v7, :cond_86

    if-nez v3, :cond_c2

    const/4 v6, 0x2

    :goto_6d
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8, v6, v12}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v8

    if-eqz v8, :cond_77

    iput-boolean v11, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    :cond_77
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v8, :cond_86

    if-nez v0, :cond_86

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v8, p0, v6}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_86
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v8

    if-eqz v8, :cond_c4

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v8

    xor-int/lit8 v1, v8, 0x1

    :goto_96
    if-eqz v3, :cond_c6

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_c6

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/AppWindowToken;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    :goto_a2
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v8

    if-eqz v8, :cond_c8

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v8, :cond_c8

    if-eqz v2, :cond_b2

    if-eqz v1, :cond_c8

    :cond_b2
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_be

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_be
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c2
    const/4 v6, 0x5

    goto :goto_6d

    :cond_c4
    const/4 v1, 0x0

    goto :goto_96

    :cond_c6
    const/4 v2, 0x0

    goto :goto_a2

    :cond_c8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    if-eqz v7, :cond_e6

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v12, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v8

    if-eqz v8, :cond_e6

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_e6
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v12, v11}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private removeReplacedWindow()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->transferDimToReplacement()V

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    :cond_20
    return-void
.end method

.method private setResizedWhileNotDragResizing(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    return-void
.end method

.method private setupWindowForRemoveOnExit()V
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1e
    return-void
.end method

.method private shouldSaveSurface()Z
    .registers 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_16

    return v2

    :cond_16
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1d

    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    if-eqz v3, :cond_31

    return v2

    :cond_31
    sget-boolean v3, Lcom/android/server/wm/WindowState;->DEBUG_DISABLE_SAVING_SURFACES:Z

    if-eqz v3, :cond_36

    return v2

    :cond_36
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->shouldSaveSurface()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {p0}, Lcom/android/server/wm/WindowStateInjector;->shouldSaveSurface(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    :cond_42
    return v2
.end method

.method private subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13

    const/4 v7, 0x0

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    return-void
.end method

.method private transferDimToReplacement()V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    :cond_1f
    return-void
.end method


# virtual methods
.method addWinAnimatorToList(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_d
    if-ltz v1, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->addWinAnimatorToList(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method adjustStartingWindowFlags()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2b

    const v0, 0x480001

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x480002

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x480001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2b
    return-void
.end method

.method applyAdjustForImeIfNeeded()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V

    :cond_17
    return-void
.end method

.method applyDimLayerIfNeeded()V
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_22

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_22

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DimLayerController;->applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_21

    if-eqz v0, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v3, :cond_42

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    :cond_42
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DimLayerController;->applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V

    goto :goto_21
.end method

.method applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFullscreenContainer()Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_cd

    const/4 v10, 0x1

    :goto_1d
    if-eqz v13, :cond_d0

    xor-int/lit8 v1, v9, 0x1

    if-nez v1, :cond_d0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_d3

    xor-int/lit8 v8, v10, 0x1

    :goto_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_116

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v1, :cond_d6

    move v2, v12

    :goto_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v1, :cond_f6

    move v3, v11

    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_162

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v14, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v15, v1, v4

    :goto_6a
    if-eqz v9, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7c

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_7c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v5, v12

    mul-float/2addr v4, v5

    add-float/2addr v4, v14

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v6, v11

    mul-float/2addr v4, v6

    add-float/2addr v4, v15

    float-to-int v6, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    if-eqz v8, :cond_b0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-static {v1, v0, v4}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_b0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_cc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    :cond_cc
    return-void

    :cond_cd
    const/4 v10, 0x0

    goto/16 :goto_1d

    :cond_d0
    const/4 v8, 0x1

    goto/16 :goto_2e

    :cond_d3
    const/4 v8, 0x0

    goto/16 :goto_2e

    :cond_d6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_ee

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v2, v1

    goto/16 :goto_41

    :cond_ee
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_41

    :cond_f6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_10e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v3, v1

    goto/16 :goto_4a

    :cond_10e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_4a

    :cond_116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12c

    move v2, v12

    :goto_120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_146

    move v3, v11

    goto/16 :goto_4a

    :cond_12c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_141

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v2, v1

    goto :goto_120

    :cond_141
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    goto :goto_120

    :cond_146
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_15c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v3, v1

    goto/16 :goto_4a

    :cond_15c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    goto/16 :goto_4a

    :cond_162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v15, v1

    goto/16 :goto_6a
.end method

.method attach()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->windowAddedLocked(Ljava/lang/String;)V

    return-void
.end method

.method calculatePolicyCrop(Landroid/graphics/Rect;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    :goto_39
    return-void

    :cond_3a
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    if-lt v2, v3, :cond_52

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_39

    :cond_52
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_39

    :cond_6a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->calculateSystemDecorRect(Landroid/graphics/Rect;)V

    goto :goto_39
.end method

.method public canAcquireSleepToken()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    return v0
.end method

.method public canAddInternalSystemWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return v0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 10

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_5b

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->isAnimationStarting()Z

    move-result v0

    :goto_13
    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v7, :cond_5d

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    move-result v7

    if-nez v7, :cond_5d

    xor-int/lit8 v4, v0, 0x1

    :goto_21
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_5f

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v7, :cond_5f

    xor-int/lit8 v1, v0, 0x1

    :goto_2d
    if-nez v4, :cond_61

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v7, :cond_61

    move v3, v1

    :goto_34
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_63

    const/4 v6, 0x1

    :goto_3d
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v7

    if-eqz v7, :cond_65

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_65

    const/4 v2, 0x1

    :goto_4e
    if-eqz v5, :cond_67

    xor-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_67

    xor-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_67

    xor-int/lit8 v7, v2, 0x1

    :goto_5a
    return v7

    :cond_5b
    const/4 v0, 0x0

    goto :goto_13

    :cond_5d
    const/4 v4, 0x0

    goto :goto_21

    :cond_5f
    const/4 v1, 0x0

    goto :goto_2d

    :cond_61
    const/4 v3, 0x1

    goto :goto_34

    :cond_63
    const/4 v6, 0x0

    goto :goto_3d

    :cond_65
    const/4 v2, 0x0

    goto :goto_4e

    :cond_67
    const/4 v7, 0x0

    goto :goto_5a
.end method

.method canBeImeTarget()Z
    .registers 7

    const v5, 0x20008

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_9

    return v4

    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v2

    :goto_13
    if-nez v2, :cond_18

    return v4

    :cond_16
    const/4 v2, 0x1

    goto :goto_13

    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz v0, :cond_2a

    if-eq v0, v5, :cond_2a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2a

    return v4

    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    return v3
.end method

.method canReceiveKeys()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_2b
    return v0
.end method

.method canReceiveTouchInput()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->shouldIgnoreInput()Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method canRestoreSurface()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    if-eqz v2, :cond_b

    return v4

    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_13
    if-ltz v1, :cond_27

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canRestoreSurface()Z

    move-result v2

    if-eqz v2, :cond_24

    return v4

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_27
    return v3
.end method

.method checkPolicyVisibilityChange()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    :cond_21
    return-void
.end method

.method clearAnimatingFlags()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_13

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v0, 0x1

    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    const/4 v0, 0x1

    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_2c

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_34
    if-ltz v1, :cond_46

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_46
    return v0
.end method

.method clearAnimatingWithSavedSurface()Z
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method clearHasSavedSurface()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    :cond_e
    return-void
.end method

.method public clearWasVisibleBeforeClientHidden()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->clearWasVisibleBeforeClientHidden()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method clearWillReplaceWindow()V
    .registers 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_10
    if-ltz v1, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 48

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    move/from16 v33, v0

    if-nez v33, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    move/from16 v33, v0

    xor-int/lit8 v33, v33, 0x1

    if-eqz v33, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFullscreenContainer()Z

    move-result v15

    if-eqz v29, :cond_526

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v32

    :goto_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-nez v15, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v33

    if-eqz v33, :cond_52a

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->setEmpty()V

    :cond_46
    :goto_46
    if-nez v15, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v33

    if-eqz v33, :cond_541

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v17, p2

    move-object/from16 v16, p1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_cd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_ed

    :cond_cd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p8, :cond_7e5

    const/4 v12, 0x1

    :goto_131
    if-eqz v12, :cond_140

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v12, :cond_7e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1e8
    if-eqz v32, :cond_803

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v33

    xor-int/lit8 v33, v33, 0x1

    if-eqz v33, :cond_803

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    move-result v33

    if-nez v33, :cond_204

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v33

    if-eqz v33, :cond_7fb

    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    :goto_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v33

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v34

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->width()I

    move-result v34

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/16 v33, 0x20

    move/from16 v0, v33

    invoke-static {v0, v8}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v33

    move/from16 v0, v33

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    const/16 v33, 0x30

    move/from16 v0, v33

    invoke-static {v0, v8}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v33

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    sub-int v35, v35, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v33, v33, v23

    sub-int v33, v33, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    sub-int v35, v35, v23

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    add-int v34, v20, v31

    add-int v35, v30, v13

    move-object/from16 v0, v33

    move/from16 v1, v20

    move/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2e0
    :goto_2e0
    if-eqz v15, :cond_357

    xor-int/lit8 v33, v32, 0x1

    if-eqz v33, :cond_357

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    :cond_357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v34, 0x7f2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->setEmpty()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->setEmpty()V

    :goto_406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->scale(F)V

    :cond_4d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v33, v0

    if-eqz v33, :cond_525

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move/from16 v0, v33

    if-ne v11, v0, :cond_4fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v33

    move/from16 v0, v33

    if-eq v9, v0, :cond_525

    :cond_4fa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_525

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v33, v0

    iget v0, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v34, v0

    iget v0, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_525
    return-void

    :cond_526
    const/16 v32, 0x0

    goto/16 :goto_31

    :cond_52a
    if-eqz v29, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v33

    if-eqz v33, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getTempInsetBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_46

    :cond_541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState;->getContainerBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v33

    if-nez v33, :cond_57d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_57d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v33

    if-nez v33, :cond_59d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_59d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v33, v0

    if-eqz v33, :cond_607

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v33

    xor-int/lit8 v33, v33, 0x1

    if-eqz v33, :cond_607

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v14, :cond_677

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v33

    if-eqz v33, :cond_677

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_677

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v28

    const/16 v33, 0x2

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_7a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_7a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    sub-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_677
    :goto_677
    if-eqz v32, :cond_692

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_692

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_6bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_7d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v18, v33, v34

    :goto_6e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_7d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v19, v33, v34

    :goto_708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_7dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    :goto_71a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v34, v0

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v33

    if-nez v33, :cond_796

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_796
    move-object/from16 v17, p2

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto/16 :goto_70

    :cond_7a1
    const/16 v33, 0x4

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_677

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_677

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_677

    :cond_7d5
    const/16 v18, 0x0

    goto/16 :goto_6e2

    :cond_7d9
    const/16 v19, 0x0

    goto/16 :goto_708

    :cond_7dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    goto/16 :goto_71a

    :cond_7e5
    const/4 v12, 0x0

    goto/16 :goto_131

    :cond_7e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1e8

    :cond_7fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    goto/16 :goto_20a

    :cond_803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    const/16 v34, 0x7f2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_84f

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/server/wm/DockedStackDividerController;->positionDockedStackedDivider(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2e0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    goto/16 :goto_2e0

    :cond_84f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2e0

    :cond_9bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    if-nez v32, :cond_bba

    xor-int/lit8 v33, v15, 0x1

    if-eqz v33, :cond_bba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_bb6

    const/16 v25, 0x1

    :goto_9ef
    if-nez v32, :cond_bc2

    xor-int/lit8 v33, v15, 0x1

    if-eqz v33, :cond_bc2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_bbe

    const/16 v24, 0x1

    :goto_a15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v36, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v37, v33, v34

    if-eqz v25, :cond_bc6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move/from16 v34, v33

    :goto_a6d
    if-eqz v24, :cond_be4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v33, v33, v38

    :goto_a89
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v34

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v36, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v37, v33, v34

    if-eqz v25, :cond_c00

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move/from16 v34, v33

    :goto_aee
    if-eqz v24, :cond_c1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v33, v33, v38

    :goto_b0a
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v34

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v37

    if-eqz v25, :cond_c3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v34, v33

    :goto_b81
    if-eqz v24, :cond_c5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v33, v33, v38

    const/16 v38, 0x0

    move/from16 v0, v33

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    :goto_ba7
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v34

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_406

    :cond_bb6
    const/16 v25, 0x0

    goto/16 :goto_9ef

    :cond_bba
    const/16 v25, 0x0

    goto/16 :goto_9ef

    :cond_bbe
    const/16 v24, 0x0

    goto/16 :goto_a15

    :cond_bc2
    const/16 v24, 0x0

    goto/16 :goto_a15

    :cond_bc6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move/from16 v34, v33

    goto/16 :goto_a6d

    :cond_be4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v33, v33, v38

    goto/16 :goto_a89

    :cond_c00
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move/from16 v34, v33

    goto/16 :goto_aee

    :cond_c1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v33, v33, v38

    goto/16 :goto_b0a

    :cond_c3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v34, v33

    goto/16 :goto_b81

    :cond_c5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v33, v33, v38

    const/16 v38, 0x0

    move/from16 v0, v33

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    goto/16 :goto_ba7
.end method

.method destroyOrSaveSurfaceUnchecked()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldSaveSurface()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    sget-object v2, Lcom/android/server/wm/WindowState;->sEmptyRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Session;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v1, "saved surface"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->disconnectInTransaction()V

    :cond_30
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    :goto_32
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    return-void

    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    goto :goto_32
.end method

.method destroySavedSurface()V
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_19
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    :cond_24
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    return-void
.end method

.method destroySurface(ZZ)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v3, :cond_c

    return v4

    :cond_c
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_15
    if-ltz v2, :cond_27

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_27
    if-nez p2, :cond_31

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v3, :cond_31

    move v3, p1

    :goto_2e
    if-nez v3, :cond_33

    return v1

    :cond_31
    const/4 v3, 0x1

    goto :goto_2e

    :cond_33
    if-nez p2, :cond_39

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-eqz v3, :cond_3e

    :cond_39
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    :cond_3e
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_5a

    if-eqz p1, :cond_48

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_4b

    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurfaceUnchecked()V

    :cond_4b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_52

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    :cond_52
    if-eqz p1, :cond_57

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    :cond_57
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method dispatchWallpaperVisibility(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :goto_b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v2, p1, :cond_1a

    if-nez v1, :cond_13

    if-eqz p1, :cond_1a

    :cond_13
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1d

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/4 v1, 0x0

    goto :goto_b

    :catch_1d
    move-exception v0

    goto :goto_1a
.end method

.method disposeInputChannel()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 13

    const/high16 v8, -0x80000000

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDisplayId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    if-eqz v1, :cond_28

    const-string/jumbo v3, " stackId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_28
    const-string/jumbo v3, " mSession="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, " mClient="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mOwnerUid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mShowToOwnerOnly="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " package="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " appop="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAttrs="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Requested w="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " h="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mLayoutSeq="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v3, v4, :cond_b5

    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v3, v4, :cond_ce

    :cond_b5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "LastRequested w="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " h="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_ce
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v3, :cond_d6

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v3, :cond_f1

    :cond_d6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mParentWindow="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, " mLayoutAttached="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_f1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v3, :cond_fd

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v3, :cond_fd

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v3, :cond_12c

    :cond_fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mIsImWindow="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mIsWallpaper="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mIsFloatingLayer="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mWallpaperVisible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_12c
    if-eqz p3, :cond_179

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mBaseLayer="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mSubLayer="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mAnimLayer="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "+"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mLastLayer="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_179
    if-eqz p3, :cond_21b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mToken="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1d6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAppToken="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " isAnimatingWithSavedSurface()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mAppDied="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "drawnStateEvaluated="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mightAffectAllDrawn="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1d6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mViewVisibility=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " mHaveFrame="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mObscured="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSeq="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_239

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_239

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_239

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_239

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v3, :cond_239

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v3, :cond_280

    :cond_239
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mPolicyVisibility="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mAppOpVisibility="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " parentHidden="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mPermanentlyHidden="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mForceHideNonSystemOverlayWindow="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_280
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v3, :cond_288

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v3, :cond_2a1

    :cond_288
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mRelayoutCalled="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mLayoutNeeded="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2a1
    iget v3, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v3, :cond_2a9

    iget v3, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v3, :cond_2c2

    :cond_2a9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Offsets x="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " y="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_2c2
    if-eqz p3, :cond_335

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mGivenContentInsets="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " mGivenVisibleInsets="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v3, :cond_2e8

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v3, :cond_315

    :cond_2e8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mTouchableInsets="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " mGivenInsetsPending="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "touchable region="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mFullConfiguration="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mLastReportedConfiguration="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mHasSurface="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mShownPosition="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    invoke-virtual {v3, p1}, Landroid/graphics/Point;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " isReadyForDisplay()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " hasSavedSurface()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mWindowRemovalAllowed="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    if-eqz p3, :cond_391

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mFrame="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_391
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_3a6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mCompatFrame="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3a6
    if-eqz p3, :cond_4b0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Frames: containing="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " parent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    display="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " overscan="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    content="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " visible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    decor="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "    outset="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Cur insets: overscan="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " content="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " visible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " stable="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " surface="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " outsets="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Lst insets: overscan="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " content="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " visible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " stable="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " physical="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v3, " outset="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_4b0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_4e7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v3, :cond_4e7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_4e7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_516

    :cond_4e7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAnimatingExit="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mRemoveOnExit="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mDestroying="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mRemoved="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_516
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-nez v3, :cond_528

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_528

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-nez v3, :cond_528

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v3, :cond_56f

    :cond_528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mOrientationChanging="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " configOrientationChanging="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_54b

    const/4 v2, 0x1

    :cond_54b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, " mAppFreezing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, " mTurnOnScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, " mReportOrientationChanged="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_56f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v2, :cond_585

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_585
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_591

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_5aa

    :cond_591
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mHScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, " mVScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    :cond_5aa
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_5b6

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_5cf

    :cond_5b6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mWallpaperX="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, " mWallpaperY="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    :cond_5cf
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_5db

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_5f4

    :cond_5db
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mWallpaperXStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, " mWallpaperYStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    :cond_5f4
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v2, v8, :cond_5fc

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v2, v8, :cond_615

    :cond_5fc
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mWallpaperDisplayOffsetX="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " mWallpaperDisplayOffsetY="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_615
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_635

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDrawLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_635
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_659

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDragResizing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_659
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v2

    if-eqz v2, :cond_67d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "computeDragResizing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_67d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOnScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method expandForSurfaceInsets(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    return-void
.end method

.method fillsDisplay()Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gtz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v2, v3, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
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

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    :cond_d
    if-eqz p2, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0

    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    :cond_13
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    return-void
.end method

.method getAnimLayerAdjustment()I
    .registers 3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v1

    return v1

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getAnimLayerAdjustment()I

    move-result v1

    return v1
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :cond_9
    return-object v0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    :goto_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->useWindowFrameForBackdrop(I)Z

    move-result v2

    if-nez v2, :cond_19

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1c

    :cond_19
    return-object p1

    :cond_1a
    const/4 v1, 0x1

    goto :goto_b

    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method public getBaseType()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0

    :cond_19
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, -0x1

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    return v1
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method getDrawnStateEvaluated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getHighestAnimLayer()I
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_c
    if-ltz v3, :cond_20

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getHighestAnimLayer()I

    move-result v1

    if-le v1, v2, :cond_1d

    move v2, v1

    :cond_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_20
    return v2
.end method

.method public getInputDispatchingTimeoutNanos()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide v0, 0x1dcd65000L

    goto :goto_8
.end method

.method getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    return-void
.end method

.method getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->getNeedsMenu(Lcom/android/server/wm/WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method getOrientationChanging()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_23

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method getParentFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v3, :cond_e

    return-object p0

    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_16
    if-ltz v1, :cond_2a

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_2a
    return-object v4
.end method

.method getResizeMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    return v0
.end method

.method public getRotationAnimationHint()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    return v0

    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getShownPositionLw()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method getSpecialWindowAnimLayerAdjustment()I
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    :cond_b
    :goto_b
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v1, v0

    return v1

    :cond_f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    goto :goto_b
.end method

.method getStableFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v3, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_e

    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v2

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_20

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    :cond_20
    return-object v2
.end method

.method public getStackId()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, -0x1

    return v1

    :cond_8
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    return v1
.end method

.method public getSurfaceLayer()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method getTopParentWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    move-object v0, p0

    move-object v1, p0

    :cond_2
    :goto_2
    if-eqz v0, :cond_10

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_10
    return-object v1
.end method

.method getTouchableRegion(Landroid/graphics/Region;I)I
    .registers 10

    const/4 v5, 0x0

    and-int/lit8 v4, p2, 0x28

    if-nez v4, :cond_3b

    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_43

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_43

    or-int/lit8 p2, p2, 0x20

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    :goto_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    neg-int v5, v0

    neg-int v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    :goto_3a
    return p2

    :cond_3b
    const/4 v3, 0x0

    goto :goto_6

    :cond_3d
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    goto :goto_19

    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_3a
.end method

.method getTouchableRegion(Landroid/graphics/Region;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v1, :pswitch_data_28

    :pswitch_7
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :goto_a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    return-void

    :pswitch_e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_a

    :pswitch_14
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_a

    :pswitch_1a
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->translate(II)V

    goto :goto_a

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method getVisibleBounds(Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v0

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v0, :cond_1d

    iget-object v1, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_3e

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    :cond_1d
    :goto_1d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_3b

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    goto :goto_a

    :cond_3e
    const/4 v0, 0x0

    goto :goto_1d

    :cond_40
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :goto_f
    return-object p0

    :cond_10
    move-object p0, v2

    goto :goto_f

    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :goto_22
    if-ltz v1, :cond_33

    iget v3, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_33

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-object v0

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3a

    :cond_33
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    return-object p0

    :cond_3a
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_22

    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    :cond_4b
    if-ltz v1, :cond_58

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    return-object v0

    :cond_54
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_43

    :cond_58
    return-object v2
.end method

.method getWindowInfo()Landroid/view/WindowInfo;
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v6, v4, Landroid/view/WindowInfo;->type:I

    iget v6, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v6, v4, Landroid/view/WindowInfo;->layer:I

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    :cond_25
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v6, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    iput v6, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v6

    iput-boolean v6, v4, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    move-result v5

    :cond_41
    iput-boolean v5, v4, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v5, :cond_53

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    :cond_53
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-lez v1, :cond_7f

    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v5, :cond_66

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_66
    const/4 v2, 0x0

    :goto_67
    if-ge v2, v1, :cond_7f

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_7f
    return-object v4
.end method

.method getWindowTag()Ljava/lang/CharSequence;
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_12

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_12
    return-object v0
.end method

.method handleWindowMovedIfNeeded()V
    .registers 8

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v5

    if-nez v5, :cond_8

    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_7c

    iget-object v5, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v5

    if-nez v5, :cond_7a

    iget-object v5, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v0

    :goto_24
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v5

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5b

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_5b

    if-eqz v3, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->hasMovementAnimations()Z

    move-result v5

    if-eqz v5, :cond_5b

    :cond_4e
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->setMoveAnimation(II)V

    :cond_5b
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v5, :cond_72

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_72
    :try_start_72
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5, v2, v4}, Landroid/view/IWindow;->moved(II)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_77} :catch_7e

    :goto_77
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    return-void

    :cond_7a
    const/4 v0, 0x1

    goto :goto_24

    :cond_7c
    const/4 v0, 0x0

    goto :goto_24

    :catch_7e
    move-exception v1

    goto :goto_77
.end method

.method public hasAppShownWindows()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method hasContentToDisplay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    return v0

    :cond_2a
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v0

    return v0
.end method

.method public hasDrawnLw()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method hasSavedSurface()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    return v0
.end method

.method hasVisibleNotDrawnWallpaper()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    return v4

    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_17
    if-ltz v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v2

    if-eqz v2, :cond_28

    return v4

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2b
    return v3
.end method

.method public hideLw(Z)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, 0x0

    :cond_d
    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    :goto_11
    if-nez v0, :cond_17

    return v3

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_11

    :cond_17
    if-eqz p1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_26

    const/4 p1, 0x0

    :cond_26
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez p1, :cond_3b

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_3b

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_3b
    if-eqz p2, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_42
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_4d
    return v4
.end method

.method hideNonSystemOverlayWindowsWhenVisible()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    :cond_e
    return v0
.end method

.method public hidePermanentlyLw()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_a

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    :cond_a
    return-void
.end method

.method hideWallpaperWindow(ZLjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_9
    if-ltz v2, :cond_19

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_21

    if-eqz p1, :cond_35

    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_35

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_35
    return-void
.end method

.method inFreeformWorkspace()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method inPinnedWorkspace()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method isActivityTypeHome()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isAlive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isAnimatingInvisibleWithSavedSurface()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-eqz v2, :cond_f

    :cond_e
    return v4

    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_17
    if-ltz v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_28

    return v4

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2b
    return v3
.end method

.method public isAnimatingLw()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method isAnimatingWithSavedSurface()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    return v0
.end method

.method isChildWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return v0
.end method

.method isClosing()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method isConfigChanged()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDefaultDisplay()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v1
.end method

.method public isDimming()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v2

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public isDisplayedLw()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_1c

    if-eqz v0, :cond_2a

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2a

    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v3, :cond_2a

    if-eqz v0, :cond_2b

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2b

    :cond_2a
    :goto_2a
    return v1

    :cond_2b
    move v1, v2

    goto :goto_2a

    :cond_2d
    move v1, v2

    goto :goto_2a
.end method

.method isDockedResizing()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v0

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isDragResizeChanged()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDragResizing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return v0
.end method

.method public isDrawFinishedLw()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1a

    move v0, v1

    goto :goto_1a

    :cond_24
    move v0, v1

    goto :goto_1a
.end method

.method public isDrawnLw()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method public isFocused()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_16

    if-ne v0, p0, :cond_14

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isGoneForLayoutLw()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_31

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_31

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_31

    :cond_16
    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_31

    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_31

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_31

    :cond_2e
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    :goto_30
    return v1

    :cond_31
    const/4 v1, 0x1

    goto :goto_30
.end method

.method isIdentityMatrix(FFFF)Z
    .registers 11

    const v5, 0x3f800054    # 1.00001f

    const v4, 0x3f7fff58    # 0.99999f

    const v3, 0x358637bd    # 1.0E-6f

    const v2, -0x4a79c843    # -1.0E-6f

    const/4 v1, 0x0

    cmpg-float v0, p1, v4

    if-ltz v0, :cond_15

    cmpl-float v0, p1, v5

    if-lez v0, :cond_16

    :cond_15
    return v1

    :cond_16
    cmpg-float v0, p4, v4

    if-ltz v0, :cond_1e

    cmpl-float v0, p4, v5

    if-lez v0, :cond_1f

    :cond_1e
    return v1

    :cond_1f
    cmpg-float v0, p2, v2

    if-ltz v0, :cond_27

    cmpl-float v0, p2, v3

    if-lez v0, :cond_28

    :cond_27
    return v1

    :cond_28
    cmpg-float v0, p3, v2

    if-ltz v0, :cond_30

    cmpl-float v0, p3, v3

    if-lez v0, :cond_31

    :cond_30
    return v1

    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method public isInMultiWindowMode()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isInputMethodWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    return v0
.end method

.method isInteresting()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method isLaidOut()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isLetterboxedAppWindow()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v2

    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->hasBounds()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    :goto_16
    if-eqz v2, :cond_1f

    xor-int/lit8 v3, v0, 0x1

    :goto_1a
    return v3

    :cond_1b
    const/4 v2, 0x0

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_16

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method isLetterboxedForDisplayCutout()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v1

    :goto_a
    if-eqz v1, :cond_11

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    :goto_e
    return v2

    :cond_f
    const/4 v1, 0x0

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    goto :goto_e
.end method

.method isObscuringDisplay()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    return v1

    :cond_16
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v1

    :cond_20
    return v1
.end method

.method isOnScreen()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11

    :cond_10
    return v2

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_21

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_27

    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_28

    :cond_27
    :goto_27
    return v1

    :cond_28
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_27

    move v1, v2

    goto :goto_27

    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3d

    :cond_3c
    :goto_3c
    return v1

    :cond_3d
    move v1, v2

    goto :goto_3c
.end method

.method isParentWindowHidden()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method isPotentialDragTarget()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method isReadyForDisplay()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    :cond_13
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v2

    if-nez v2, :cond_33

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_39

    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3a

    :cond_39
    :goto_39
    return v0

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_39

    :cond_46
    move v0, v1

    goto :goto_39

    :cond_48
    move v0, v1

    goto :goto_39
.end method

.method isResizedWhileNotDragResizing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    return v0
.end method

.method public isRtl()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isVisible()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isVisibleLw()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    return v0
.end method

.method isVisibleNow()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->keepWallpaperShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method isVisibleOrAdding()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v2, :cond_2d

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_2d

    :cond_f
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_23

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2d

    :cond_23
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_2d
    return v1
.end method

.method public isVoiceInteraction()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isWinVisibleLw()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v0, :cond_19

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method isWindowAnimationSet()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_b

    return v4

    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_13
    if-ltz v1, :cond_27

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isWindowAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_24

    return v4

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_27
    return v3
.end method

.method layoutInParentFrame()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method markSavedSurfaceExiting()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_15
    if-ltz v1, :cond_25

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->markSavedSurfaceExiting()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_25
    return-void
.end method

.method mightAffectAllDrawn(Z)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_33

    :cond_f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_33

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    xor-int/lit8 v0, v2, 0x1

    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz p1, :cond_28

    if-nez v0, :cond_28

    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    :cond_28
    :goto_28
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_32

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_32
    return v1

    :cond_33
    const/4 v0, 0x0

    goto :goto_17

    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_32

    goto :goto_28
.end method

.method onAppVisibilityChanged(ZZ)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_a
    if-ltz v3, :cond_1c

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_1c
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3c

    if-nez p1, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3b

    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    :cond_3b
    return v2

    :cond_3c
    if-nez p1, :cond_49

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eq p1, v5, :cond_6c

    if-nez p2, :cond_68

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz p1, :cond_6d

    const/4 v4, 0x1

    :goto_58
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_68

    invoke-virtual {v0, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_68
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    :cond_6c
    return v2

    :cond_6d
    const/4 v4, 0x2

    goto :goto_58
.end method

.method onExitAnimationDone()V
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    new-instance v0, Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_16
    if-ltz v3, :cond_24

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_3c

    :try_start_37
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_a4

    :cond_3c
    :goto_3c
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_57

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_57
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_5c

    return-void

    :cond_5c
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimationSet()Z

    move-result v4

    if-eqz v4, :cond_65

    return-void

    :cond_65
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v5, "onExitAnimationDone"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    :cond_78
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    :cond_81
    :goto_81
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_8d
    if-eqz v2, :cond_96

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    goto :goto_81

    :catch_a4
    move-exception v1

    goto :goto_3c
.end method

.method onMovedByResize()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    return-void
.end method

.method onParentSet()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    return-void
.end method

.method onResize()V
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_44

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->setResizedWhileNotDragResizing(Z)V

    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_4c

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    :cond_4c
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    return-void
.end method

.method onSetAppExiting()Z
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v4

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4, p0, v6}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_25
    const/4 v1, 0x1

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_2b
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_33
    if-ltz v3, :cond_45

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v4

    or-int/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    :cond_45
    return v1
.end method

.method onStartFreezingScreen()V
    .registers 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method onStopFreezingScreen()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_b
    if-ltz v1, :cond_1d

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_22

    return v2

    :cond_22
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_40

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v5, v3, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    :cond_40
    iput v5, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    return v6
.end method

.method onUnfreezeBounds()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method onWindowReplacementTimeout()V
    .registers 4

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    :cond_7
    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_10
    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10
.end method

.method openInputChannel(Landroid/view/InputChannel;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Window already has an input channel."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    if-eqz p1, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    :goto_34
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    return-void

    :cond_40
    new-instance v2, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    goto :goto_34
.end method

.method orientationChangeTimedOut()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    return-void
.end method

.method performShowLocked()Z
    .registers 10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    return v6

    :cond_d
    const-string/jumbo v4, "performShow on "

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v2, v8, :cond_1b

    if-ne v2, v7, :cond_2c

    :cond_1b
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_2c

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_2c
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v7, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3b

    :cond_3a
    return v6

    :cond_3b
    const-string/jumbo v4, "Showing "

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v8, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz v4, :cond_87

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_6c
    if-ltz v3, :cond_87

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_84

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_84
    add-int/lit8 v3, v3, -0x1

    goto :goto_6c

    :cond_87
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_98

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    :cond_98
    const/4 v4, 0x1

    return v4
.end method

.method public pokeDrawLockLw(J)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Window:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_49
    return-void
.end method

.method prelayout()V
    .registers 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    :goto_14
    return-void

    :cond_15
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_14
.end method

.method prepareWindowToDisplayDuringRelayout(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :cond_c
    if-eqz p1, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1b

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    :cond_2e
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_13

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
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

.method relayoutVisibleWindow(III)I
    .registers 13

    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f1

    :cond_12
    const/4 v3, 0x2

    :goto_13
    or-int/2addr p1, v3

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_52

    sget-object v3, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "relayoutVisibleWindow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mAnimatingExit=true, mRemoveOnExit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDestroying="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->cancelExitAnimationForNextAnimationLocked()V

    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    :cond_52
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_5f

    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5f
    if-ne p3, v5, :cond_65

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v8, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v8, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V

    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->tryChangeFormatInPlaceLocked()Z

    move-result v3

    if-nez v3, :cond_89

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    or-int/lit8 p1, p1, 0x6

    :cond_89
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c5

    :cond_a3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowState;->setResizedWhileNotDragResizing(Z)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_c5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    or-int/lit8 p1, p1, 0x6

    :cond_c5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v3

    if-nez v3, :cond_f4

    const/4 v1, 0x1

    :goto_d2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v3

    if-eqz v3, :cond_fa

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v3

    if-ne v3, v8, :cond_f8

    const/4 v0, 0x1

    :goto_df
    if-eqz v1, :cond_fc

    const/16 v3, 0x10

    :goto_e3
    or-int/2addr p1, v3

    if-eqz v0, :cond_e7

    move v4, v5

    :cond_e7
    or-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v3

    if-eqz v3, :cond_f0

    or-int/lit8 p1, p1, 0x2

    :cond_f0
    return p1

    :cond_f1
    move v3, v4

    goto/16 :goto_13

    :cond_f4
    const/4 v1, 0x0

    goto :goto_d2

    :cond_f6
    const/4 v1, 0x0

    goto :goto_d2

    :cond_f8
    const/4 v0, 0x0

    goto :goto_df

    :cond_fa
    const/4 v0, 0x0

    goto :goto_df

    :cond_fc
    move v3, v4

    goto :goto_e3
.end method

.method removeIfPossible()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method removeImmediately()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_a

    return-void

    :cond_a
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, p0, :cond_23

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p0}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    :try_start_49
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_55} :catch_5b

    :goto_55
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    return-void

    :catch_5b
    move-exception v1

    goto :goto_55
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_16

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->removeReplacedWindow()V

    return v4

    :cond_16
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1e
    if-ltz v1, :cond_32

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return v4

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_32
    return v3
.end method

.method reportFocusChangedSerialized(ZZ)V
    .registers 8

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_3a

    :goto_5
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_34

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowFocusObserver;

    if-eqz p1, :cond_28

    :try_start_1c
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    goto :goto_25

    :catch_32
    move-exception v1

    goto :goto_25

    :cond_34
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_39
    return-void

    :catch_3a
    move-exception v1

    goto :goto_5
.end method

.method reportResized()V
    .registers 19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wm.reportResized_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v16, 0x20

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1f
    new-instance v11, Landroid/util/MergedConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ce

    const/4 v10, 0x1

    :goto_59
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v2, v2, Landroid/view/IWindow$Stub;

    if-eqz v2, :cond_d0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowState$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V

    invoke-virtual {v15, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    :goto_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_99

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_99

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_99
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_c8} :catch_d6

    :goto_c8
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_ce
    const/4 v10, 0x0

    goto :goto_59

    :cond_d0
    move-object/from16 v3, p0

    :try_start_d2
    invoke-direct/range {v3 .. v13}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_82

    :catch_d6
    move-exception v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v0, v15, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    move-wide/from16 v16, v0

    sub-long v2, v2, v16

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    sget-object v2, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to report \'resized\' to the client of "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v15, ", removing this window."

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_c8
.end method

.method requestTraversalOnceLw(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRequestTraversalOnceContext:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_f
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mRequestTraversalOnceContext:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_27
    if-ltz v2, :cond_37

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    :cond_37
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    return-void
.end method

.method restoreSavedSurface()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    if-nez v0, :cond_7

    return v2

    :cond_7
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    return v2

    :cond_17
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    :goto_2c
    return v3

    :cond_2d
    sget-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to restore saved surface: surface gone! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method restoreSavedSurfaceForInterestingWindow()I
    .registers 8

    const/4 v6, -0x1

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_a
    if-ltz v2, :cond_22

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->restoreSavedSurfaceForInterestingWindow()I

    move-result v1

    if-eq v1, v6, :cond_1d

    if-ne v3, v6, :cond_20

    move v3, v1

    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_20
    add-int/2addr v3, v1

    goto :goto_1d

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_41

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v4, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wasVisibleBeforeClientHidden()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_41

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v4, :cond_42

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_42

    :cond_41
    return v3

    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-nez v4, :cond_4e

    if-ne v3, v6, :cond_4f

    const/4 v3, 0x1

    :cond_4e
    :goto_4e
    return v3

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e
.end method

.method scheduleAnimationIfDimming()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v2

    if-eqz v2, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_27
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 7

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13

    if-eqz v1, :cond_13

    return-void

    :cond_13
    if-eqz v1, :cond_34

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1d
    if-ltz v3, :cond_2f

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_2f
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    xor-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v2

    goto :goto_3b
.end method

.method public setAppOpVisibilityLw(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_c
.end method

.method setDisplayLayoutNeeded()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_9
    return-void
.end method

.method setDragResizing()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v2, :cond_9

    return-void

    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    :goto_1d
    return-void

    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    :goto_2f
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    goto :goto_1d

    :cond_32
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method setDrawnStateEvaluated(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return-void
.end method

.method setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_18

    :cond_17
    return-void

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_1d

    return-void

    :cond_1d
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz p1, :cond_25

    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto :goto_24
.end method

.method setHasSurface(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    return-void
.end method

.method setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    return-void
.end method

.method setOrientationChanging(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    return-void
.end method

.method setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    const/4 v2, 0x1

    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_30
    if-ltz v1, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    :cond_42
    return v2
.end method

.method setReportResizeHints()Z
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v0, v3, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v0, v3, :cond_83

    move v0, v1

    :goto_6b
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    if-nez v0, :cond_80

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    :cond_80
    return v1

    :cond_81
    move v0, v1

    goto :goto_6b

    :cond_83
    const/4 v0, 0x0

    goto :goto_6b
.end method

.method setRequestedSize(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_f

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_f
    return-void
.end method

.method setShowToOwnerOnlyLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    return-void
.end method

.method public setVisibleBeforeClientHidden()V
    .registers 3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    :goto_8
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setVisibleBeforeClientHidden()V

    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_8
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    return-void
.end method

.method setWillReplaceChildWindows()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_12
    if-ltz v1, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method setWillReplaceWindow(Z)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    :cond_29
    return-void

    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    return-void
.end method

.method setWindowScale(II)V
    .registers 7

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, p1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    int-to-float v3, p1

    div-float/2addr v1, v3

    :goto_1a
    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, p2, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float v2, v1, v2

    :cond_2a
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_b

    :cond_2f
    move v1, v2

    goto :goto_1a

    :cond_31
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    goto :goto_2c
.end method

.method shouldBeReplacedWithChildren()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    const/4 v0, 0x0

    goto :goto_c
.end method

.method shouldKeepVisibleDeadAppWindow()Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_c

    :cond_b
    return v1

    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_21

    return v1

    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_29

    return v1

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_35

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->keepVisibleDeadAppWindowOnScreen(I)Z

    move-result v1

    :cond_35
    return v1
.end method

.method public showLw(Z)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_13

    return v1

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_18

    return v1

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_21

    return v1

    :cond_21
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 p1, 0x0

    :cond_2c
    :goto_2c
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz p1, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    :cond_37
    if-eqz p2, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_4b
    return v2

    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2c

    const/4 p1, 0x0

    goto :goto_2c
.end method

.method stopUsingSavedSurface()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->stopUsingSavedSurface()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-nez v2, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "stopUsingSavedSurface"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method surfaceInsetsChanging()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method switchUser()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-eq v1, v0, :cond_5c

    :cond_c
    :goto_c
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_63

    const-string/jumbo v1, " EXITING}"

    :goto_4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    :cond_59
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1

    :cond_5c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_59

    goto :goto_c

    :cond_63
    const-string/jumbo v1, "}"

    goto :goto_4f
.end method

.method transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1e

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_1e
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3b

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3b
    return-void
.end method

.method translateToWindowX(F)F
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v0, p1, v1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    :cond_e
    return v0
.end method

.method translateToWindowY(F)F
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v0, p1, v1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    :cond_e
    return v0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method updateLastInsetValues()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_19
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_21

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v2, :cond_22

    :cond_21
    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_21

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_21

    iget v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_50

    iget v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    if-nez v2, :cond_4d

    iget v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    :cond_4d
    iput-boolean v4, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_4f

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    goto :goto_4f
.end method

.method updateResizingWindowIfNeeded()V
    .registers 9

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-eq v4, v5, :cond_f

    :cond_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v4

    if-eqz v4, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isDragResizingChangeReported()Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    :goto_41
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v4, :cond_6c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v4, :cond_6c

    iget-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v4, :cond_6c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    if-nez v4, :cond_6c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    if-nez v4, :cond_6c

    if-nez v0, :cond_6c

    if-nez v1, :cond_6c

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizingReported()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v4, :cond_b0

    :cond_6c
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_7c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    return-void

    :cond_7a
    const/4 v1, 0x0

    goto :goto_41

    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v4

    if-nez v4, :cond_92

    if-nez v1, :cond_92

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    move-result v4

    if-eqz v4, :cond_9e

    :cond_92
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_9e

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    :cond_9e
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_af
    :goto_af
    return-void

    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_af

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto :goto_af
.end method

.method usesRelativeZOrdering()Z
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    return v2
.end method

.method waitingForReplacement()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_7

    return v4

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_f
    if-ltz v1, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v2

    if-eqz v2, :cond_20

    return v4

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_23
    return v3
.end method

.method public wasVisibleBeforeClientHidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    return v0
.end method

.method wouldBeVisibleIfPolicyIgnored()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e

    :cond_21
    const/4 v0, 0x0

    goto :goto_1e
.end method
